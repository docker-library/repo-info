## `gradle:9-jdk-25-and-26-corretto-al2023`

```console
$ docker pull gradle@sha256:fa042b2294681386b0e2652feb22f13987a168e1460f73c4612469b3e4e70b19
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:9-jdk-25-and-26-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:e85839a35625e673cb3e8fbd01f498ad5d02472db58f93dc072d95fa473cfe2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **650.8 MB (650779688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42e63f28dd4c151c2350fca0bdaa4a4410abe267b13b30ff0bea347f2fb8fff7`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:23 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:23 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:13:08 GMT
ARG version=25.0.4.7-1
# Thu, 23 Jul 2026 23:13:08 GMT
ARG package_version=1
# Thu, 23 Jul 2026 23:13:08 GMT
# ARGS: version=25.0.4.7-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 23 Jul 2026 23:13:08 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:13:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Fri, 24 Jul 2026 00:11:52 GMT
COPY /usr/lib/jvm/java-26-amazon-corretto /usr/lib/jvm/java-26-amazon-corretto # buildkit
# Fri, 24 Jul 2026 00:12:12 GMT
ENV JAVA_LTS_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Fri, 24 Jul 2026 00:12:12 GMT
ENV JAVA_CURRENT_HOME=/usr/lib/jvm/java-26-amazon-corretto
# Fri, 24 Jul 2026 00:12:12 GMT
CMD ["gradle"]
# Fri, 24 Jul 2026 00:12:12 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 24 Jul 2026 00:12:12 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 24 Jul 2026 00:12:12 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle         && echo "Ensuring Gradle detects installed JDKs"     && echo "org.gradle.java.installations.auto-detect=false" > /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.auto-download=false" >> /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.fromEnv=JAVA_LTS_HOME,JAVA_CURRENT_HOME" >> /home/gradle/.gradle/gradle.properties # buildkit
# Fri, 24 Jul 2026 00:12:12 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 24 Jul 2026 00:12:12 GMT
WORKDIR /home/gradle
# Fri, 24 Jul 2026 00:12:12 GMT
ENV GRADLE_VERSION=9.6.1
# Fri, 24 Jul 2026 00:12:12 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Fri, 24 Jul 2026 00:12:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 24 Jul 2026 00:12:15 GMT
USER gradle
# Fri, 24 Jul 2026 00:12:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 24 Jul 2026 00:12:15 GMT
USER root
```

-	Layers:
	-	`sha256:3b5eb82da667b3e3ec6bc9d0b202bfba5f45c665af1ff4c33b4d24e971967e96`  
		Last Modified: Fri, 10 Jul 2026 21:57:49 GMT  
		Size: 54.6 MB (54574264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:964a6a5b83b71b12d012405abeb3132afef40960448d97a6a9166ab6b1482624`  
		Last Modified: Thu, 23 Jul 2026 23:13:33 GMT  
		Size: 189.5 MB (189475803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a4a3580da206443f605e7b7a022ece43cac2a4ae6592f41784d7b001a82aab6`  
		Last Modified: Fri, 24 Jul 2026 00:12:51 GMT  
		Size: 179.4 MB (179421520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:089456a64d6976d7779cf3ee6342dbb548f580c9ec4e8621bf795a13a5ad097e`  
		Last Modified: Fri, 24 Jul 2026 00:12:49 GMT  
		Size: 86.7 MB (86684682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee7e80d5da818cd1dd1bf050f554f057310837085ad1ef1867b635b8bf8bc6a3`  
		Last Modified: Fri, 24 Jul 2026 00:12:46 GMT  
		Size: 1.8 KB (1757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18df252096b04b91023ced3831b5f02070bc52d5474e7a036a4266e9e7ddb68a`  
		Last Modified: Fri, 24 Jul 2026 00:12:51 GMT  
		Size: 140.6 MB (140596024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3b6dfda2bc30c00e06fcce6d13c89e6e231a04e508b73392518268bc60f07c6`  
		Last Modified: Fri, 24 Jul 2026 00:12:47 GMT  
		Size: 25.6 KB (25606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk-25-and-26-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:92b672acb207f2f8d919d4b8fd1ce51f6d25d6d151eb939a95eabf4a105dfd6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.6 MB (11591914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4cc8d457a55efd503fb3e8acf42416b16f8127850800075d025ca42aca6bef5`

```dockerfile
```

-	Layers:
	-	`sha256:d66baa62d85acc95d8b96747edee0e4da315f72e4a39cbb07c48d8700bc53813`  
		Last Modified: Fri, 24 Jul 2026 00:12:45 GMT  
		Size: 11.6 MB (11562404 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:01b67204d1b77ef584340889ca577d0e81703fcc6f7b8136156e2d98515d49f7`  
		Last Modified: Fri, 24 Jul 2026 00:12:44 GMT  
		Size: 29.5 KB (29510 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk-25-and-26-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:add17e38cb3af60becd751feeff3f4a56319ad864a1ff6e72f26e45f8a659f06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **644.8 MB (644798371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1216bceeb241c5c33f377a97aac50207bebc7f4748deb670f31dce20ab6936e`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:13 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:13 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:15:03 GMT
ARG version=25.0.4.7-1
# Thu, 23 Jul 2026 23:15:03 GMT
ARG package_version=1
# Thu, 23 Jul 2026 23:15:03 GMT
# ARGS: version=25.0.4.7-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 23 Jul 2026 23:15:03 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:15:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Fri, 24 Jul 2026 00:11:51 GMT
COPY /usr/lib/jvm/java-26-amazon-corretto /usr/lib/jvm/java-26-amazon-corretto # buildkit
# Fri, 24 Jul 2026 00:12:16 GMT
ENV JAVA_LTS_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Fri, 24 Jul 2026 00:12:16 GMT
ENV JAVA_CURRENT_HOME=/usr/lib/jvm/java-26-amazon-corretto
# Fri, 24 Jul 2026 00:12:16 GMT
CMD ["gradle"]
# Fri, 24 Jul 2026 00:12:16 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 24 Jul 2026 00:12:16 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 24 Jul 2026 00:12:16 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle         && echo "Ensuring Gradle detects installed JDKs"     && echo "org.gradle.java.installations.auto-detect=false" > /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.auto-download=false" >> /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.fromEnv=JAVA_LTS_HOME,JAVA_CURRENT_HOME" >> /home/gradle/.gradle/gradle.properties # buildkit
# Fri, 24 Jul 2026 00:12:16 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 24 Jul 2026 00:12:16 GMT
WORKDIR /home/gradle
# Fri, 24 Jul 2026 00:12:16 GMT
ENV GRADLE_VERSION=9.6.1
# Fri, 24 Jul 2026 00:12:16 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Fri, 24 Jul 2026 00:12:19 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 24 Jul 2026 00:12:19 GMT
USER gradle
# Fri, 24 Jul 2026 00:12:20 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 24 Jul 2026 00:12:20 GMT
USER root
```

-	Layers:
	-	`sha256:6e12116aae4fd69e40f0f0c465aeb7f71b0d7db5d37e40fced028a576a31ca9e`  
		Last Modified: Sat, 11 Jul 2026 02:19:28 GMT  
		Size: 53.4 MB (53449232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:921ca3cd311a0af902befa8a1430dd08383471940b496e6f90ba8db99517eb23`  
		Last Modified: Thu, 23 Jul 2026 23:15:29 GMT  
		Size: 187.4 MB (187376869 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cea9830ca36c8d20effadde852862dfd37b04d52fed260b3b9884269f3c89aa3`  
		Last Modified: Fri, 24 Jul 2026 00:13:00 GMT  
		Size: 177.3 MB (177296391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28b75ac2faa704970d3637ad3b0234323481a2c546b51b2a0227cc95b995c60b`  
		Last Modified: Fri, 24 Jul 2026 00:12:57 GMT  
		Size: 86.0 MB (86048729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8eb8a929c6df3e472014e28f675cdd6f0b55694c9b9c5bb6719eae4993e6a87`  
		Last Modified: Fri, 24 Jul 2026 00:12:52 GMT  
		Size: 1.8 KB (1758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90099f3b61c6006799783c0f052972297b0c90b18e459040b42bfa32a2490949`  
		Last Modified: Fri, 24 Jul 2026 00:13:00 GMT  
		Size: 140.6 MB (140596027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e73d67cd597faa4d9792df592727cb0885484b0e20872e9a8bfe9908f697bbd4`  
		Last Modified: Fri, 24 Jul 2026 00:12:54 GMT  
		Size: 29.3 KB (29333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk-25-and-26-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:3d5c6d3deef42ccea2c751b74b993877e13c4efe1999ca424d89e7bfed61629f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.6 MB (11590702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2bd8e8eeaf0d9a6dc8530ca0359f0a63e85b611f45ed0e6b1b17fcd3c1a42ba`

```dockerfile
```

-	Layers:
	-	`sha256:f4930b169280a814b3d07cfe883d58e3d808f9269bdd420280c3151eb0593fba`  
		Last Modified: Fri, 24 Jul 2026 00:12:53 GMT  
		Size: 11.6 MB (11560874 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:346bb8ffc536faa7909f538d243e4cec0a25d5980d09d32ba9a6eb635e2a5569`  
		Last Modified: Fri, 24 Jul 2026 00:12:52 GMT  
		Size: 29.8 KB (29828 bytes)  
		MIME: application/vnd.in-toto+json
