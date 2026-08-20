## `gradle:8-jdk11-corretto-al2023`

```console
$ docker pull gradle@sha256:653f9e939aabb3315fe6111eb5c40e93a606b8bb20efd85d70c293c1276c4d4c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:8-jdk11-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:d22fa4384682d3a589e51a5c6f8e7f91c1b06c47e24b5b3c78b9059adc9a36a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **433.1 MB (433076443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a14ca2993cfa70fa28f97f5beb1ab90846eeae5c53d4519822dd4842ec30ca12`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 20 Aug 2026 16:55:33 GMT
COPY /rootfs/ / # buildkit
# Thu, 20 Aug 2026 16:55:33 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 17:19:31 GMT
ARG version=11.0.32.10-1
# Thu, 20 Aug 2026 17:19:31 GMT
# ARGS: version=11.0.32.10-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-jmods-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 20 Aug 2026 17:19:31 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:19:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Thu, 20 Aug 2026 18:02:22 GMT
CMD ["gradle"]
# Thu, 20 Aug 2026 18:02:22 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 20 Aug 2026 18:02:22 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 20 Aug 2026 18:02:22 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 20 Aug 2026 18:02:22 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 20 Aug 2026 18:02:22 GMT
WORKDIR /home/gradle
# Thu, 20 Aug 2026 18:02:22 GMT
ENV GRADLE_VERSION=8.14.5
# Thu, 20 Aug 2026 18:02:22 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Thu, 20 Aug 2026 18:02:24 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 20 Aug 2026 18:02:24 GMT
USER gradle
# Thu, 20 Aug 2026 18:02:25 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 20 Aug 2026 18:02:25 GMT
USER root
```

-	Layers:
	-	`sha256:f206cad061713321049e1fe0c85223e018266fd8bccebf3156ef94c125bbd2e0`  
		Last Modified: Mon, 17 Aug 2026 23:42:26 GMT  
		Size: 54.6 MB (54583847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f327989489f429805e0feed4a0d3c5309fa47a4f9dc41f65db7ca5a9215255ba`  
		Last Modified: Thu, 20 Aug 2026 17:19:51 GMT  
		Size: 153.5 MB (153480563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe2dc8e76d02695e2384dd63a31f03802189a86f98c6732cbd4f349afc0c02b0`  
		Last Modified: Thu, 20 Aug 2026 18:02:53 GMT  
		Size: 86.9 MB (86886879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23ba912a2e35d4ce6440e6bb5cf1ee69ab1fe5222f9eee23f78bb35d70bfad8b`  
		Last Modified: Thu, 20 Aug 2026 18:02:49 GMT  
		Size: 1.6 KB (1644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e581fda2e9d3c15b28242727028465d8ce50b16fdae31e7aa964f5ed12802d1e`  
		Last Modified: Thu, 20 Aug 2026 18:02:54 GMT  
		Size: 138.1 MB (138068575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ac32014f1235bee21c614b9d4210fadb88b1bd7a3554028dfd8cd96520a3964`  
		Last Modified: Thu, 20 Aug 2026 18:02:49 GMT  
		Size: 54.9 KB (54903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk11-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:6b6bd86a19fcb6f62f69ba43d90e133072e6743f0c2acbf6fa9fb9b3d71c6e55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11403325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3d28339af34bff1c2bb0ccba0b3ced88be5f6ae534d7963dd9bd93e6eef7a13`

```dockerfile
```

-	Layers:
	-	`sha256:5da71e9f95f88b93cc919f378760029afcd3034a603b3a13e9a85c71982cafc9`  
		Last Modified: Thu, 20 Aug 2026 18:02:50 GMT  
		Size: 11.4 MB (11381660 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:970763503ed115208ea5828d8277d980294eb1ab0916b3a6340b447f8ea565d2`  
		Last Modified: Thu, 20 Aug 2026 18:02:49 GMT  
		Size: 21.7 KB (21665 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:8-jdk11-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:a12eccba55d1d0832dced1ecd439f053097ad2e3e9f734c1c5108dcd22ddc28e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **429.9 MB (429883404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f867c55dff9f1f3f133663838c3bbdc11c254be683157beb66bb218428995dfe`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 20 Aug 2026 16:55:33 GMT
COPY /rootfs/ / # buildkit
# Thu, 20 Aug 2026 16:55:33 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 17:16:25 GMT
ARG version=11.0.32.10-1
# Thu, 20 Aug 2026 17:16:25 GMT
# ARGS: version=11.0.32.10-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-jmods-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 20 Aug 2026 17:16:25 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:16:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Thu, 20 Aug 2026 17:21:17 GMT
CMD ["gradle"]
# Thu, 20 Aug 2026 17:21:17 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 20 Aug 2026 17:21:17 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 20 Aug 2026 17:21:17 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 20 Aug 2026 17:21:17 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 20 Aug 2026 17:21:17 GMT
WORKDIR /home/gradle
# Thu, 20 Aug 2026 17:21:17 GMT
ENV GRADLE_VERSION=8.14.5
# Thu, 20 Aug 2026 17:21:17 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Thu, 20 Aug 2026 17:21:20 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 20 Aug 2026 17:21:20 GMT
USER gradle
# Thu, 20 Aug 2026 17:21:21 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 20 Aug 2026 17:21:21 GMT
USER root
```

-	Layers:
	-	`sha256:108a276670f119053938f97626b5d9916306b34861b9c0cdd8d64a50bf504ad8`  
		Last Modified: Mon, 17 Aug 2026 23:42:41 GMT  
		Size: 53.5 MB (53450887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a4d87a2b4a67b46e508796bd573b843e984e8b62e4ffb36ce1e4f9040ccc67b`  
		Last Modified: Thu, 20 Aug 2026 17:16:46 GMT  
		Size: 152.1 MB (152056180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:619593915ab7c18f736685179321b5c5c6cc7c4d9e5742fd2bdb18564d0a0612`  
		Last Modified: Thu, 20 Aug 2026 17:21:52 GMT  
		Size: 86.2 MB (86246549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6041734bc07e7e78bc080d4661ec6e47a7605a004ffd8285a676e3d004ae47d4`  
		Last Modified: Thu, 20 Aug 2026 17:21:49 GMT  
		Size: 1.6 KB (1645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e59c7243c5a6b9da169c978c1badcef9fc01a22b65184e49f7dcd5a75c32bbf`  
		Last Modified: Thu, 20 Aug 2026 17:21:53 GMT  
		Size: 138.1 MB (138068573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1245caab0be46aeb3c41a25791e7a81f8041cfeafb3c0775f1f5eee3b277cd1d`  
		Last Modified: Thu, 20 Aug 2026 17:21:49 GMT  
		Size: 59.5 KB (59538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk11-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:cfc894738bafe8607f06a99d3d38a79ba3b36088fe85203db1336e73a250984c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11403365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4aff9974ff7414ac9b1a078ce9f9a6178487dbddd5b8d896317d7ac13a6d10f`

```dockerfile
```

-	Layers:
	-	`sha256:c506dfca43416549c08fb12fae7601cd74971bda562520a161345f623455ddfc`  
		Last Modified: Thu, 20 Aug 2026 17:21:50 GMT  
		Size: 11.4 MB (11381503 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:118503146314d70b44a814fbfeb18655a9e424a1dc215040d31740ccb757b03a`  
		Last Modified: Thu, 20 Aug 2026 17:21:49 GMT  
		Size: 21.9 KB (21862 bytes)  
		MIME: application/vnd.in-toto+json
