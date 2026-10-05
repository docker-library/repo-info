## `gradle:jdk-lts-and-current-corretto-al2023`

```console
$ docker pull gradle@sha256:a7d65515b57168594933966e2903e3ebf49e07666acd4d30834d6f973f1435c3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:jdk-lts-and-current-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:39c3c1ed9fdb945c78cb4bc1791b411ab91e853d854ee4c017b72e6ddb22b9ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **670.9 MB (670904886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f05f36ffb7fba18c910017b535bbf6f420bd7c91264cad67171260412cc88e2`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 05 Oct 2026 18:29:04 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:29:04 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 18:44:22 GMT
ARG version=25.0.4.10-1
# Mon, 05 Oct 2026 18:44:22 GMT
ARG package_version=1
# Mon, 05 Oct 2026 18:44:22 GMT
# ARGS: version=25.0.4.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 05 Oct 2026 18:44:22 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 18:44:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Mon, 05 Oct 2026 19:04:08 GMT
COPY /usr/lib/jvm/java-26-amazon-corretto /usr/lib/jvm/java-26-amazon-corretto # buildkit
# Mon, 05 Oct 2026 19:04:36 GMT
ENV JAVA_LTS_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Mon, 05 Oct 2026 19:04:36 GMT
ENV JAVA_CURRENT_HOME=/usr/lib/jvm/java-26-amazon-corretto
# Mon, 05 Oct 2026 19:04:36 GMT
CMD ["gradle"]
# Mon, 05 Oct 2026 19:04:36 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 05 Oct 2026 19:04:36 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Mon, 05 Oct 2026 19:04:37 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle         && echo "Ensuring Gradle detects installed JDKs"     && echo "org.gradle.java.installations.auto-detect=false" > /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.auto-download=false" >> /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.fromEnv=JAVA_LTS_HOME,JAVA_CURRENT_HOME" >> /home/gradle/.gradle/gradle.properties # buildkit
# Mon, 05 Oct 2026 19:04:37 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 05 Oct 2026 19:04:37 GMT
WORKDIR /home/gradle
# Mon, 05 Oct 2026 19:04:37 GMT
ENV GRADLE_VERSION=9.8.0
# Mon, 05 Oct 2026 19:04:37 GMT
ARG GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
# Mon, 05 Oct 2026 19:04:40 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 05 Oct 2026 19:04:40 GMT
USER gradle
# Mon, 05 Oct 2026 19:04:40 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 05 Oct 2026 19:04:40 GMT
USER root
```

-	Layers:
	-	`sha256:7234d0a9b6ba1270c7bb653ee62a443a1dbb6fdfa833336edd3c0691c2524d1f`  
		Last Modified: Thu, 01 Oct 2026 02:22:29 GMT  
		Size: 54.6 MB (54630770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb4992f1cf7532669201e3d7da8ba0a07a8ffdfc0b13a84bb98552488b86eae9`  
		Last Modified: Mon, 05 Oct 2026 18:44:46 GMT  
		Size: 189.5 MB (189511554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32e4ab9163aa0398d401d60de697be2df79cfce6aaf78faa6a2557ba0ba4528f`  
		Last Modified: Mon, 05 Oct 2026 19:05:21 GMT  
		Size: 179.4 MB (179421829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33fd95b83780860e365ae479e45db17600ce5bd2ba8442aea4ff235561fcd25b`  
		Last Modified: Mon, 05 Oct 2026 19:05:19 GMT  
		Size: 95.8 MB (95789081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fa8cb3c10d6f8572da9f10a75a847e1967f2e0517a56c7996e7a0979bb01fcc`  
		Last Modified: Mon, 05 Oct 2026 19:05:13 GMT  
		Size: 1.8 KB (1753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6eacc5de2fe964857ba85c651589898eb7a48dd3c3ed76c4f019e5268da201a`  
		Last Modified: Mon, 05 Oct 2026 19:05:20 GMT  
		Size: 151.5 MB (151524261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cea54db0c66bad51d3df52a9dece2ef3d8f2759f0087f2a9cdd0faee3236dd01`  
		Last Modified: Mon, 05 Oct 2026 19:05:15 GMT  
		Size: 25.6 KB (25606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk-lts-and-current-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:a79e69663afe9d57e6f8626f1b4bf86f8197170417cbd58ec8094ffa455cedcf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12869310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffb233df32c0851bbeb3b46c50086e2002c3e490770380d86a232234149c061f`

```dockerfile
```

-	Layers:
	-	`sha256:7809a093b09715c3f7060f310a648f01c050cb75b7173f8129ef85b56369e210`  
		Last Modified: Mon, 05 Oct 2026 19:05:14 GMT  
		Size: 12.8 MB (12839800 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:41cb81a4d1c8d4a0374e2f9ebae1625d823bc40602b8a319d22da8f9cc838f70`  
		Last Modified: Mon, 05 Oct 2026 19:05:13 GMT  
		Size: 29.5 KB (29510 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk-lts-and-current-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:2a6440ee307a6b5f39fcf29e354cf298112a48aad9ab3e7eb95ef84bcdfe6ba1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **665.0 MB (664972917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22f614f01e32dc77d682773efb80fe8960dedb5edf2b2b76d16a506cc442d20a`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 05 Oct 2026 18:28:31 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:28:31 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 18:43:52 GMT
ARG version=25.0.4.10-1
# Mon, 05 Oct 2026 18:43:52 GMT
ARG package_version=1
# Mon, 05 Oct 2026 18:43:52 GMT
# ARGS: version=25.0.4.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 05 Oct 2026 18:43:52 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 18:43:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Mon, 05 Oct 2026 19:03:40 GMT
COPY /usr/lib/jvm/java-26-amazon-corretto /usr/lib/jvm/java-26-amazon-corretto # buildkit
# Mon, 05 Oct 2026 19:04:15 GMT
ENV JAVA_LTS_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Mon, 05 Oct 2026 19:04:15 GMT
ENV JAVA_CURRENT_HOME=/usr/lib/jvm/java-26-amazon-corretto
# Mon, 05 Oct 2026 19:04:15 GMT
CMD ["gradle"]
# Mon, 05 Oct 2026 19:04:15 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 05 Oct 2026 19:04:15 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Mon, 05 Oct 2026 19:04:16 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle         && echo "Ensuring Gradle detects installed JDKs"     && echo "org.gradle.java.installations.auto-detect=false" > /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.auto-download=false" >> /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.fromEnv=JAVA_LTS_HOME,JAVA_CURRENT_HOME" >> /home/gradle/.gradle/gradle.properties # buildkit
# Mon, 05 Oct 2026 19:04:16 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 05 Oct 2026 19:04:16 GMT
WORKDIR /home/gradle
# Mon, 05 Oct 2026 19:04:16 GMT
ENV GRADLE_VERSION=9.8.0
# Mon, 05 Oct 2026 19:04:16 GMT
ARG GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
# Mon, 05 Oct 2026 19:04:19 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 05 Oct 2026 19:04:19 GMT
USER gradle
# Mon, 05 Oct 2026 19:04:19 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 05 Oct 2026 19:04:19 GMT
USER root
```

-	Layers:
	-	`sha256:3009834f3cf8cead1d3dea9d3cbebc711c021c4aed04759be014247a0c3181e7`  
		Last Modified: Thu, 01 Oct 2026 02:22:31 GMT  
		Size: 53.5 MB (53504398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d8f82cdd25a7c12179799666029dc0bc5720c430be45fa6650d3aba439c5853`  
		Last Modified: Mon, 05 Oct 2026 18:44:16 GMT  
		Size: 187.4 MB (187409864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e86fe2da3844d6947f625ac2141d5bd1629693de08cc4f815ae77550844319c`  
		Last Modified: Mon, 05 Oct 2026 19:05:01 GMT  
		Size: 177.3 MB (177298206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fed676244069321102b2665dbe266cce0fa87bf2b105301196812250c3a836cd`  
		Last Modified: Mon, 05 Oct 2026 19:04:58 GMT  
		Size: 95.2 MB (95205067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5631b5b5693dd8dee0cf5d497b40f64f507fbbd17e46f08bd7b8eddb6352f224`  
		Last Modified: Mon, 05 Oct 2026 19:04:53 GMT  
		Size: 1.8 KB (1755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dde1ba83454cd78cb5471846cde70307f6efe741e865602cfe38627718d0953`  
		Last Modified: Mon, 05 Oct 2026 19:05:00 GMT  
		Size: 151.5 MB (151524264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37ed8791a0234ec48d9574808f9fa1b64feb094e21b5b461dd624cda047ced0d`  
		Last Modified: Mon, 05 Oct 2026 19:04:54 GMT  
		Size: 29.3 KB (29331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk-lts-and-current-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:dd61cc609c5b87327e984cb422b522d83acd18e69f96c900e734464705e57cf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12868098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f55ff71dba80d9219ca16144702144b86960dc318ea7c9fe1350f48fbdc8b570`

```dockerfile
```

-	Layers:
	-	`sha256:f9c188cd9f9126841327e9826afbf875a079567837e2cb00f984e2d5458241c0`  
		Last Modified: Mon, 05 Oct 2026 19:04:54 GMT  
		Size: 12.8 MB (12838270 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:58be359318f7fe5d0bb3caef4ae7436c78ec25cdbb1b4ef65328289d18718ee4`  
		Last Modified: Mon, 05 Oct 2026 19:04:53 GMT  
		Size: 29.8 KB (29828 bytes)  
		MIME: application/vnd.in-toto+json
