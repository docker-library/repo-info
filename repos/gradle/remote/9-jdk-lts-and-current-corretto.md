## `gradle:9-jdk-lts-and-current-corretto`

```console
$ docker pull gradle@sha256:95d68ddb8db4fbb8af2e5bb16c3b761eb3ebe7deb212f560675ad759ea64f030
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:9-jdk-lts-and-current-corretto` - linux; amd64

```console
$ docker pull gradle@sha256:83dc29648b2b4a119dd2b67cda49fcc3a627316fbc1369260ea5196eb5798f06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **668.9 MB (668891499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad501224dfd6cfb0e5162c76c9573bf497c2f798e50455983494b35fcc4da676`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 05 Oct 2026 18:29:04 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:29:04 GMT
CMD ["/bin/bash"]
# Wed, 14 Oct 2026 17:08:19 GMT
ARG version=25.0.4.11-1
# Wed, 14 Oct 2026 17:08:19 GMT
ARG package_version=1
# Wed, 14 Oct 2026 17:08:19 GMT
# ARGS: version=25.0.4.11-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 14 Oct 2026 17:08:19 GMT
ENV LANG=C.UTF-8
# Wed, 14 Oct 2026 17:08:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Wed, 14 Oct 2026 18:11:37 GMT
COPY /usr/lib/jvm/java-27-amazon-corretto /usr/lib/jvm/java-27-amazon-corretto # buildkit
# Wed, 14 Oct 2026 18:12:07 GMT
ENV JAVA_LTS_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Wed, 14 Oct 2026 18:12:07 GMT
ENV JAVA_CURRENT_HOME=/usr/lib/jvm/java-27-amazon-corretto
# Wed, 14 Oct 2026 18:12:07 GMT
CMD ["gradle"]
# Wed, 14 Oct 2026 18:12:07 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 14 Oct 2026 18:12:07 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 14 Oct 2026 18:12:07 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle         && echo "Ensuring Gradle detects installed JDKs"     && echo "org.gradle.java.installations.auto-detect=false" > /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.auto-download=false" >> /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.fromEnv=JAVA_LTS_HOME,JAVA_CURRENT_HOME" >> /home/gradle/.gradle/gradle.properties # buildkit
# Wed, 14 Oct 2026 18:12:07 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 14 Oct 2026 18:12:07 GMT
WORKDIR /home/gradle
# Wed, 14 Oct 2026 18:12:07 GMT
ENV GRADLE_VERSION=9.8.1
# Wed, 14 Oct 2026 18:12:07 GMT
ARG GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
# Wed, 14 Oct 2026 18:12:10 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 14 Oct 2026 18:12:10 GMT
USER gradle
# Wed, 14 Oct 2026 18:12:11 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 14 Oct 2026 18:12:11 GMT
USER root
```

-	Layers:
	-	`sha256:7234d0a9b6ba1270c7bb653ee62a443a1dbb6fdfa833336edd3c0691c2524d1f`  
		Last Modified: Thu, 01 Oct 2026 02:22:29 GMT  
		Size: 54.6 MB (54630770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7333c0dca0a32895f54ffe1a9cd592adacddc800ebc24ce8443cef3b1736880f`  
		Last Modified: Wed, 14 Oct 2026 17:08:43 GMT  
		Size: 189.5 MB (189508388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b8a8d153ce0a3843f4b338139ebe272c424d089b240112ef72f30fd7685a7ef`  
		Last Modified: Wed, 14 Oct 2026 18:12:53 GMT  
		Size: 177.4 MB (177401969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14b02e927e4a383d4f1a4e1f13be15fd5276d892562131fcf597241945445ff2`  
		Last Modified: Wed, 14 Oct 2026 18:12:50 GMT  
		Size: 95.8 MB (95789366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e01cd0b63eb0c8bdc4a260c9c757c06e6255f6b02bd122f6135ed11bd74bb95b`  
		Last Modified: Wed, 14 Oct 2026 18:12:44 GMT  
		Size: 1.8 KB (1753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c6f2f945391a1a81f3269432e6eb18c84627d56fc58718592f55391cf7f792d`  
		Last Modified: Wed, 14 Oct 2026 18:12:52 GMT  
		Size: 151.5 MB (151533608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de5e7668791f0760fa6fbdc22e41e2848de6e5635bf33d6b409f3541a90e52eb`  
		Last Modified: Wed, 14 Oct 2026 18:12:46 GMT  
		Size: 25.6 KB (25613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk-lts-and-current-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:9b7b9ea7ad4b2c124f778aba0e2b8d1d4c48980d329fb75311df00cacb95d93a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12866037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdb49b9abfacc3f8b19239c00bc4dac2fd819ca02edccc28c94ab914c2b0dd5b`

```dockerfile
```

-	Layers:
	-	`sha256:b9e3156b8d49d90c059c9f2a1582d4a9255da6f9c8dc4350f1ee4d87f5b44a92`  
		Last Modified: Wed, 14 Oct 2026 18:12:45 GMT  
		Size: 12.8 MB (12836527 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:471b7d81bc7feb301bbef86edb85f29cf7479a2c95450d1b019bdbbfe3fc8ecd`  
		Last Modified: Wed, 14 Oct 2026 18:12:44 GMT  
		Size: 29.5 KB (29510 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk-lts-and-current-corretto` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:b7c4c0494fad38d674fa139ef58f2f62a1657b4a635aa2ded463eb479b5f375e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **663.0 MB (662985117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b6e7522a6651fdf61a014582b79eb819e37300b7506458eb2d91694fc8ca369`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 05 Oct 2026 18:28:31 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:28:31 GMT
CMD ["/bin/bash"]
# Wed, 14 Oct 2026 17:08:18 GMT
ARG version=25.0.4.11-1
# Wed, 14 Oct 2026 17:08:18 GMT
ARG package_version=1
# Wed, 14 Oct 2026 17:08:18 GMT
# ARGS: version=25.0.4.11-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 14 Oct 2026 17:08:18 GMT
ENV LANG=C.UTF-8
# Wed, 14 Oct 2026 17:08:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Wed, 14 Oct 2026 18:11:48 GMT
COPY /usr/lib/jvm/java-27-amazon-corretto /usr/lib/jvm/java-27-amazon-corretto # buildkit
# Wed, 14 Oct 2026 18:12:23 GMT
ENV JAVA_LTS_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Wed, 14 Oct 2026 18:12:23 GMT
ENV JAVA_CURRENT_HOME=/usr/lib/jvm/java-27-amazon-corretto
# Wed, 14 Oct 2026 18:12:23 GMT
CMD ["gradle"]
# Wed, 14 Oct 2026 18:12:23 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 14 Oct 2026 18:12:23 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 14 Oct 2026 18:12:24 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle         && echo "Ensuring Gradle detects installed JDKs"     && echo "org.gradle.java.installations.auto-detect=false" > /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.auto-download=false" >> /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.fromEnv=JAVA_LTS_HOME,JAVA_CURRENT_HOME" >> /home/gradle/.gradle/gradle.properties # buildkit
# Wed, 14 Oct 2026 18:12:24 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 14 Oct 2026 18:12:24 GMT
WORKDIR /home/gradle
# Wed, 14 Oct 2026 18:12:24 GMT
ENV GRADLE_VERSION=9.8.1
# Wed, 14 Oct 2026 18:12:24 GMT
ARG GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
# Wed, 14 Oct 2026 18:12:27 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 14 Oct 2026 18:12:27 GMT
USER gradle
# Wed, 14 Oct 2026 18:12:28 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 14 Oct 2026 18:12:28 GMT
USER root
```

-	Layers:
	-	`sha256:3009834f3cf8cead1d3dea9d3cbebc711c021c4aed04759be014247a0c3181e7`  
		Last Modified: Thu, 01 Oct 2026 02:22:31 GMT  
		Size: 53.5 MB (53504398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c310118339d3542c48a0583b5af7aa6497b43a4e3e8f8615d25822b0de6042c8`  
		Last Modified: Wed, 14 Oct 2026 17:08:44 GMT  
		Size: 187.4 MB (187405086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f02c1dec633e7abd35a3f67af85cac1aa16afdb637f74bfb9220a4da0183893c`  
		Last Modified: Wed, 14 Oct 2026 18:13:10 GMT  
		Size: 175.3 MB (175304649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd6248a2fa71d85c5463e92ac95044d7a58038339128ec83fb119c474a36c554`  
		Last Modified: Wed, 14 Oct 2026 18:13:08 GMT  
		Size: 95.2 MB (95206248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ed5de3767bd9876a32006f7ca2485bd6b44babaecefe2715d0ad4d834809203`  
		Last Modified: Wed, 14 Oct 2026 18:13:02 GMT  
		Size: 1.8 KB (1755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:193e2e757c75bf59df3ec393a124a21cd9936baed5a50b2cb83678de2d6001f7`  
		Last Modified: Wed, 14 Oct 2026 18:13:09 GMT  
		Size: 151.5 MB (151533613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30c79d4fbc3d941de69b493ea346254e77ba6168ee0ac3a611e0394667ddd7ad`  
		Last Modified: Wed, 14 Oct 2026 18:13:04 GMT  
		Size: 29.3 KB (29336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk-lts-and-current-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:b4126fb8daf71cfa109b3a585018974d3fb0eaa373e970f34d8ccea8194844d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12864826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5ca464388e0c35d83014a3c206ace3dd080501fcca1d773691b63c7094f9ce8`

```dockerfile
```

-	Layers:
	-	`sha256:103b2fe5012dc0c40ff88c6ba3837802e89435f34e37d5ba3a8755915a913a2c`  
		Last Modified: Wed, 14 Oct 2026 18:13:03 GMT  
		Size: 12.8 MB (12834997 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:491102a18379a82dd345e5759a06dafd437c31a20120c54f6246f80f6accc516`  
		Last Modified: Wed, 14 Oct 2026 18:13:02 GMT  
		Size: 29.8 KB (29829 bytes)  
		MIME: application/vnd.in-toto+json
