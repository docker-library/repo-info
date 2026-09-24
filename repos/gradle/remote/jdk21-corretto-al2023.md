## `gradle:jdk21-corretto-al2023`

```console
$ docker pull gradle@sha256:880d9934b1476e1719a017ae2e7a684abd06ca36262b029e2804c73af21aaccb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:jdk21-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:afdc5ac499ee67ea28698376577db7021c5f0bca32fe9522eb7881215fe1b32b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **463.5 MB (463455224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d68142ddca1121987395849407ac7358d448074f90ea54fe721a0999761fdac1`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 17 Sep 2026 21:13:04 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:13:04 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 22:22:43 GMT
ARG version=21.0.12.9-1
# Thu, 17 Sep 2026 22:22:43 GMT
ARG package_version=1
# Thu, 17 Sep 2026 22:22:43 GMT
# ARGS: version=21.0.12.9-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 17 Sep 2026 22:22:43 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:22:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Thu, 24 Sep 2026 19:33:59 GMT
CMD ["gradle"]
# Thu, 24 Sep 2026 19:33:59 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 24 Sep 2026 19:33:59 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 24 Sep 2026 19:34:00 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 24 Sep 2026 19:34:00 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 24 Sep 2026 19:34:00 GMT
WORKDIR /home/gradle
# Thu, 24 Sep 2026 19:34:00 GMT
ENV GRADLE_VERSION=9.8.0
# Thu, 24 Sep 2026 19:34:00 GMT
ARG GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
# Thu, 24 Sep 2026 19:34:02 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 24 Sep 2026 19:34:02 GMT
USER gradle
# Thu, 24 Sep 2026 19:34:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 24 Sep 2026 19:34:03 GMT
USER root
```

-	Layers:
	-	`sha256:0f0cc63a5845e28f771c9fceda4decc68b806470b009dae4085b441df0329b69`  
		Last Modified: Mon, 31 Aug 2026 23:14:18 GMT  
		Size: 54.6 MB (54586282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88c3afdc4eda7856dc6ecfd297cc96f1039477171bba7a7a4a25acbe38a4d74a`  
		Last Modified: Thu, 17 Sep 2026 22:23:05 GMT  
		Size: 170.4 MB (170436407 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc5f96adcb7b863a4a4eb652b16540912305b3a42e3832e18c8fb5d218c54418`  
		Last Modified: Thu, 24 Sep 2026 19:34:33 GMT  
		Size: 86.9 MB (86880971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32c8ccf78200d586a40b8f8e192fbac742417febe5333724b30611ec1cd77f3b`  
		Last Modified: Thu, 24 Sep 2026 19:34:29 GMT  
		Size: 1.6 KB (1650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b02d4fa35280e1eed341a1c94fa0af12f1520351a147afd3d364b511846c8dcd`  
		Last Modified: Thu, 24 Sep 2026 19:34:34 GMT  
		Size: 151.5 MB (151524260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04d3999aafbfd714bea18e284aa8121289dbca2563893c2ab7fa4e1170f79d4b`  
		Last Modified: Thu, 24 Sep 2026 19:34:29 GMT  
		Size: 25.6 KB (25622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk21-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:37dc041464a1e7467f051d43f7e7b7016bb0d587943698f9bd632354a0b9557c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11412981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:123805f6561cdcd2a3bb9b65b20ee750d10956cbc5d1aef74144107a37792a24`

```dockerfile
```

-	Layers:
	-	`sha256:5d5155a678d3603f17516ae13b0dd29a62f0622a7366f5682dc70753dfe4ebee`  
		Last Modified: Thu, 24 Sep 2026 19:34:30 GMT  
		Size: 11.4 MB (11391330 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ae08cdb9b120034ac07bd2a37686b6e889a2b898acbf9c2e3c4a50dda16847eb`  
		Last Modified: Thu, 24 Sep 2026 19:34:29 GMT  
		Size: 21.7 KB (21651 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk21-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:52d9e0783a716cbd540268e6bd91390d77d6d12c4eb524dfcfce945e8cf49ff6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **459.9 MB (459945268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:668e04e2f94322d79ce7d1b7eddfd9a818ca44c0e103fb57cfef4d3977137bdf`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 17 Sep 2026 21:12:44 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:12:44 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 22:46:57 GMT
ARG version=21.0.12.9-1
# Thu, 17 Sep 2026 22:46:57 GMT
ARG package_version=1
# Thu, 17 Sep 2026 22:46:57 GMT
# ARGS: version=21.0.12.9-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 17 Sep 2026 22:46:57 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:46:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Thu, 24 Sep 2026 19:33:33 GMT
CMD ["gradle"]
# Thu, 24 Sep 2026 19:33:33 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 24 Sep 2026 19:33:33 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 24 Sep 2026 19:33:33 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 24 Sep 2026 19:33:33 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 24 Sep 2026 19:33:33 GMT
WORKDIR /home/gradle
# Thu, 24 Sep 2026 19:33:33 GMT
ENV GRADLE_VERSION=9.8.0
# Thu, 24 Sep 2026 19:33:33 GMT
ARG GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
# Thu, 24 Sep 2026 19:33:36 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 24 Sep 2026 19:33:36 GMT
USER gradle
# Thu, 24 Sep 2026 19:33:37 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 24 Sep 2026 19:33:37 GMT
USER root
```

-	Layers:
	-	`sha256:6b98cf5afd5c5e1a58de351abf0b1ec3a4a61b63fd5a86c62edc6367d59ac249`  
		Last Modified: Mon, 31 Aug 2026 23:14:33 GMT  
		Size: 53.5 MB (53452573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c1368bd2c0308c8749e0e929bfb7617366275d180131c4480d5ae82ab72fdb6`  
		Last Modified: Thu, 17 Sep 2026 22:47:21 GMT  
		Size: 168.7 MB (168685849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0483a1fabeaf8fe2f93ffdfd8ca9a6fb4ca651696010018d018b60ea6739f09e`  
		Last Modified: Thu, 24 Sep 2026 19:34:08 GMT  
		Size: 86.3 MB (86251569 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a214888421ffd56aafea962b236b6af32f44c4fef7433029b9ba87dfc46de309`  
		Last Modified: Thu, 24 Sep 2026 19:34:05 GMT  
		Size: 1.6 KB (1643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0131e28ef8d58d8f080558dae91f59ce7ecbf068f0b7c82de32b53628c021ad`  
		Last Modified: Thu, 24 Sep 2026 19:34:10 GMT  
		Size: 151.5 MB (151524262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fe3ee8bdebcf0f4b439e5d2daad802c89a29724c37c8063fe6f4a79b15026e8`  
		Last Modified: Thu, 24 Sep 2026 19:34:05 GMT  
		Size: 29.3 KB (29340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk21-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:69c8523b52130fb7149308439071ec4790694d8555ef5987fd414777d7ba98b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11412181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28f7903fa93bf69e76883f3ae12e9bb6712a651d8cc194e60fec3ecfdd3d08ec`

```dockerfile
```

-	Layers:
	-	`sha256:b8fb4d4bbd02be5aff71c450a4e23fc1220a4058a5111cdeb4e9287a95ee8f21`  
		Last Modified: Thu, 24 Sep 2026 19:34:06 GMT  
		Size: 11.4 MB (11390333 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3111c3ac7e369c1cdc47a016be52bd6052c1bc06b591b1bd8375aa73fde83cd3`  
		Last Modified: Thu, 24 Sep 2026 19:34:05 GMT  
		Size: 21.8 KB (21848 bytes)  
		MIME: application/vnd.in-toto+json
