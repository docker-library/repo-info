## `gradle:jdk8-corretto-al2023`

```console
$ docker pull gradle@sha256:f4cea55245ee6cd5b6c5ecb8e7d6b5d5783a1607bfbd1378b4509c77f8adc69e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:jdk8-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:40a15d84cc7eef132fe8ec2a6cc2dc9ab2560ae9ec66a3171aa70554d239a21b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **408.2 MB (408175984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:187306fdad8957bdb14460e63ea8e3d058b446815c78c4ae50c8625de5c6912e`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 18 Nov 2026 21:16:24 GMT
COPY /rootfs/ / # buildkit
# Wed, 18 Nov 2026 21:16:24 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 21:32:19 GMT
ARG version=1.8.0_514.b01-1
# Wed, 18 Nov 2026 21:32:19 GMT
# ARGS: version=1.8.0_514.b01-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 18 Nov 2026 21:32:19 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 21:32:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Wed, 18 Nov 2026 21:59:20 GMT
CMD ["gradle"]
# Wed, 18 Nov 2026 21:59:20 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 18 Nov 2026 21:59:20 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 18 Nov 2026 21:59:20 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 18 Nov 2026 21:59:20 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 18 Nov 2026 21:59:20 GMT
WORKDIR /home/gradle
# Wed, 18 Nov 2026 21:59:20 GMT
ENV GRADLE_VERSION=8.14.7
# Wed, 18 Nov 2026 21:59:20 GMT
ARG GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
# Wed, 18 Nov 2026 21:59:23 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 18 Nov 2026 21:59:23 GMT
USER gradle
# Wed, 18 Nov 2026 21:59:24 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 18 Nov 2026 21:59:24 GMT
USER root
```

-	Layers:
	-	`sha256:48c7a3aa33f84b2fa7af701f558c0a97251fe0ca6790119c6f912decc8cad76d`  
		Last Modified: Tue, 17 Nov 2026 23:01:37 GMT  
		Size: 54.6 MB (54569091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:695be0e5bcb274fe7403faf612438cb9c196668c09fe2794a0d01339b2d6cde9`  
		Last Modified: Wed, 18 Nov 2026 21:32:36 GMT  
		Size: 118.1 MB (118131328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48ca56beaca58e287c13f6738a658d937f496f67164eb1453cefaf5515bb70d4`  
		Last Modified: Wed, 18 Nov 2026 21:59:53 GMT  
		Size: 96.0 MB (95987054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92efda422a4cbac49f26b7e7cd689c4df5d22a612b88f5818a9fcbf7f96451ac`  
		Last Modified: Wed, 18 Nov 2026 21:59:49 GMT  
		Size: 1.6 KB (1647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6ad4ef71a5d1cb6c63bd94794901cb045f73d622ffc9fb3ef6a74d0dbe45df4`  
		Last Modified: Wed, 18 Nov 2026 21:59:54 GMT  
		Size: 139.4 MB (139431923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12b8b404301284642ee5bdcbf1a885fd5428db4ace095e9df5f757a1527f9b44`  
		Last Modified: Wed, 18 Nov 2026 21:59:50 GMT  
		Size: 54.9 KB (54909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk8-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:132f2dadba75ba99f7a23019a78a0a8584d073b48292cdbfe9b4bebf05f128f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (13031680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52ee2b2d9c2699b689efd3c006e868ee4a2db1799d16c94fbb30e3d776e3748e`

```dockerfile
```

-	Layers:
	-	`sha256:00a6729dfb389af6f3e1c9b1fdbdff98566ea904974581138217da19eedb72d7`  
		Last Modified: Wed, 18 Nov 2026 21:59:51 GMT  
		Size: 13.0 MB (13010029 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f1ce3fc5a29b3dc45d285ba18814068bbfd07352fd383f472febfe55d479efc`  
		Last Modified: Wed, 18 Nov 2026 21:59:50 GMT  
		Size: 21.7 KB (21651 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk8-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:d98704f1f65fafcae7db26e1f81aeac72dd737772c6d947eda40683590759c52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **406.4 MB (406362449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29b2b2e558144d415b1f4c494890574ed84d5b66c58ebb00e8348c61477fdf08`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 18 Nov 2026 21:16:23 GMT
COPY /rootfs/ / # buildkit
# Wed, 18 Nov 2026 21:16:23 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 21:32:43 GMT
ARG version=1.8.0_514.b01-1
# Wed, 18 Nov 2026 21:32:43 GMT
# ARGS: version=1.8.0_514.b01-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 18 Nov 2026 21:32:43 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 21:32:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Wed, 18 Nov 2026 21:54:36 GMT
CMD ["gradle"]
# Wed, 18 Nov 2026 21:54:36 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 18 Nov 2026 21:54:36 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 18 Nov 2026 21:54:36 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 18 Nov 2026 21:54:36 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 18 Nov 2026 21:54:36 GMT
WORKDIR /home/gradle
# Wed, 18 Nov 2026 21:54:36 GMT
ENV GRADLE_VERSION=8.14.7
# Wed, 18 Nov 2026 21:54:36 GMT
ARG GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
# Wed, 18 Nov 2026 21:54:39 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 18 Nov 2026 21:54:39 GMT
USER gradle
# Wed, 18 Nov 2026 21:54:39 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 18 Nov 2026 21:54:39 GMT
USER root
```

-	Layers:
	-	`sha256:7dd5afb185e9abad9919aa0d5eaa430bb9babdb805532cdb871320227597f486`  
		Last Modified: Wed, 18 Nov 2026 01:44:00 GMT  
		Size: 53.5 MB (53453550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9b085efbc5a54f246168cc1fbc37f3ec680693539724b402242c61bdcf760da`  
		Last Modified: Wed, 18 Nov 2026 21:33:03 GMT  
		Size: 118.0 MB (118017359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bb5b4bb8c44b63049e062527ae9072870b75f24461eed9f502cb9b6c60e094b`  
		Last Modified: Wed, 18 Nov 2026 21:55:13 GMT  
		Size: 95.4 MB (95398417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dca77b4043f4f8b2a48b6fb5d0dc9867ac0ede88e4084addf956f4c86c4124b`  
		Last Modified: Wed, 18 Nov 2026 21:55:09 GMT  
		Size: 1.6 KB (1645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2adc8c10fa28e2877421b620918316e6c83a7864ebb65eb1228cb99ecf752b5f`  
		Last Modified: Wed, 18 Nov 2026 21:55:14 GMT  
		Size: 139.4 MB (139431915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93430badde294705ad0311a2e44822d82bd26a7d7af5ca69ded1a3f604a78875`  
		Last Modified: Wed, 18 Nov 2026 21:55:09 GMT  
		Size: 59.5 KB (59531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk8-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:5cb48321f699a219ad3c6e39d2c84c611b0178c8f8b263a4acef5c4c82f3c95c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (13032203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe1d219bf97346cfc0658a2cc12a6f80ea5677734037973e855b4bd93b7d8b0a`

```dockerfile
```

-	Layers:
	-	`sha256:38a5cc135c80a9f16b6f3b9ea8084806107f51336c64bdc702dd8161941a63cc`  
		Last Modified: Wed, 18 Nov 2026 21:55:10 GMT  
		Size: 13.0 MB (13010352 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:949d5b5cd04c08c457c8b7fb26e42139db64db1282610001772566a854e70721`  
		Last Modified: Wed, 18 Nov 2026 21:55:09 GMT  
		Size: 21.9 KB (21851 bytes)  
		MIME: application/vnd.in-toto+json
