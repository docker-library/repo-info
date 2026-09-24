## `gradle:jdk25-corretto-al2023`

```console
$ docker pull gradle@sha256:4bfe7bdc2f9303ecaaf746d845fce2ad418429bb9e619a19a4291c6deee37748
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:jdk25-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:c05d72087837498b7c233fe1d7bf69f618f219eb60d36ce2b6385f94fb447be1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **482.5 MB (482491494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:415d8786a9c7449c99d01dd2034ef2d026fade516a293a862994689254f07dc7`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 17 Sep 2026 21:13:04 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:13:04 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 22:22:58 GMT
ARG version=25.0.4.8-1
# Thu, 17 Sep 2026 22:22:58 GMT
ARG package_version=1
# Thu, 17 Sep 2026 22:22:58 GMT
# ARGS: version=25.0.4.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 17 Sep 2026 22:22:58 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:22:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Thu, 24 Sep 2026 19:32:57 GMT
CMD ["gradle"]
# Thu, 24 Sep 2026 19:32:57 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 24 Sep 2026 19:32:57 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 24 Sep 2026 19:32:58 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 24 Sep 2026 19:32:58 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 24 Sep 2026 19:32:58 GMT
WORKDIR /home/gradle
# Thu, 24 Sep 2026 19:32:58 GMT
ENV GRADLE_VERSION=9.8.0
# Thu, 24 Sep 2026 19:32:58 GMT
ARG GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
# Thu, 24 Sep 2026 19:33:00 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 24 Sep 2026 19:33:00 GMT
USER gradle
# Thu, 24 Sep 2026 19:33:01 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 24 Sep 2026 19:33:01 GMT
USER root
```

-	Layers:
	-	`sha256:0f0cc63a5845e28f771c9fceda4decc68b806470b009dae4085b441df0329b69`  
		Last Modified: Mon, 31 Aug 2026 23:14:18 GMT  
		Size: 54.6 MB (54586282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb04d3a954a7cce9c0c8848251964ca12ad6dd45bce3b0832c52f22620f55838`  
		Last Modified: Thu, 17 Sep 2026 22:23:20 GMT  
		Size: 189.5 MB (189469570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efe4a2bca8dba2a1f3fcfa055a277256d3c3e2387cbc859911ca21adea274171`  
		Last Modified: Thu, 24 Sep 2026 19:33:31 GMT  
		Size: 86.9 MB (86884095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbac00d5880cb02e682838803a0309804d75211a8fc6ea1d7728328bd8a38594`  
		Last Modified: Thu, 24 Sep 2026 19:33:28 GMT  
		Size: 1.6 KB (1641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5749956681860d045dbab628ff0cb42737b2626b9a0992a4ab15243dc09b8f1d`  
		Last Modified: Thu, 24 Sep 2026 19:33:33 GMT  
		Size: 151.5 MB (151524260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5950edead4b658752b61b097c1f62878499b79a7d4d529f4b4ec1121d4e8057`  
		Last Modified: Thu, 24 Sep 2026 19:33:28 GMT  
		Size: 25.6 KB (25614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk25-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:2faf88d868b109cb2795587e71f2375c55155f2641b2a445efd61514f787b01a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11425778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71200c8d5e04ca56bf81e8c55db2703d6277571bfc400232aca28cb45d04267f`

```dockerfile
```

-	Layers:
	-	`sha256:eb32f3b554175d5318ff2ae848463b42d3becf9df41f3d6ee41c92d0f0ba304c`  
		Last Modified: Thu, 24 Sep 2026 19:33:28 GMT  
		Size: 11.4 MB (11403509 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fc649c6e77ddc17873b961c523686f2eda7695ff98ff9636ff9d6efa339d0ffa`  
		Last Modified: Thu, 24 Sep 2026 19:33:28 GMT  
		Size: 22.3 KB (22269 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk25-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:e51f9df1b498b2b7751ad3e78650dfda5670cc5283ec6246bdc12f997913ec9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **478.6 MB (478638043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20e34e9b06be556c633455f236fbaeaaa8199fd35e9dd8a831fb0b5fa3926775`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 17 Sep 2026 21:12:44 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:12:44 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 22:47:22 GMT
ARG version=25.0.4.8-1
# Thu, 17 Sep 2026 22:47:22 GMT
ARG package_version=1
# Thu, 17 Sep 2026 22:47:22 GMT
# ARGS: version=25.0.4.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 17 Sep 2026 22:47:22 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:47:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Thu, 24 Sep 2026 19:32:31 GMT
CMD ["gradle"]
# Thu, 24 Sep 2026 19:32:31 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 24 Sep 2026 19:32:31 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 24 Sep 2026 19:32:31 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 24 Sep 2026 19:32:31 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 24 Sep 2026 19:32:31 GMT
WORKDIR /home/gradle
# Thu, 24 Sep 2026 19:32:31 GMT
ENV GRADLE_VERSION=9.8.0
# Thu, 24 Sep 2026 19:32:31 GMT
ARG GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
# Thu, 24 Sep 2026 19:32:34 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 24 Sep 2026 19:32:34 GMT
USER gradle
# Thu, 24 Sep 2026 19:32:35 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 24 Sep 2026 19:32:35 GMT
USER root
```

-	Layers:
	-	`sha256:6b98cf5afd5c5e1a58de351abf0b1ec3a4a61b63fd5a86c62edc6367d59ac249`  
		Last Modified: Mon, 31 Aug 2026 23:14:33 GMT  
		Size: 53.5 MB (53452573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ede0990d45aba19c1b3aba4d86361f0ab497c8e65c5019e492496449a8a5aa9`  
		Last Modified: Thu, 17 Sep 2026 22:47:48 GMT  
		Size: 187.4 MB (187380240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81ebe117048700a8a5e3d2f8ed0ac04e74e83560c3dd3ad9872f2f5bd93057d4`  
		Last Modified: Thu, 24 Sep 2026 19:33:07 GMT  
		Size: 86.2 MB (86249948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42cc5fe2684b08737c889368ee5f0dd32d09fd9e545b6cbf07573f271eae8865`  
		Last Modified: Thu, 24 Sep 2026 19:33:03 GMT  
		Size: 1.6 KB (1644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6034739dc5e35fec5238ff39557a15b3422859966b79961e597f6923d331267d`  
		Last Modified: Thu, 24 Sep 2026 19:33:08 GMT  
		Size: 151.5 MB (151524264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b10b0f1fda44863a1dd4233c3be32485f3191e7fa522d231234e45c636a7bee`  
		Last Modified: Thu, 24 Sep 2026 19:33:03 GMT  
		Size: 29.3 KB (29342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk25-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:6380487be72d709a1a423e8787dd4ca2c4bfa372c7738ec261883810829f38d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11425037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0aa24b52bf8888154d6724db07a90d66f66ec54280bf5f682ed734c4f4cd40f0`

```dockerfile
```

-	Layers:
	-	`sha256:27f8ff05ce3ea24cf6c4441c5254f714d944e94309d4fbc165425aa7da6710d4`  
		Last Modified: Thu, 24 Sep 2026 19:33:04 GMT  
		Size: 11.4 MB (11402547 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:319a196d6f087f3e25b5c8a39d984b61e29702da891aa7ce8481f66434a5ee40`  
		Last Modified: Thu, 24 Sep 2026 19:33:03 GMT  
		Size: 22.5 KB (22490 bytes)  
		MIME: application/vnd.in-toto+json
