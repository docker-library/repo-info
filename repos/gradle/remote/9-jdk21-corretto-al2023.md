## `gradle:9-jdk21-corretto-al2023`

```console
$ docker pull gradle@sha256:857952f081c4e985c91ed1b29b84e474c7c8add7416f3f286cb9f1703a00e742
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:9-jdk21-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:74d40ceee2f3244bad39ef84fe7bc8a615815b55a80e0cd84d4ca2a6e3ebc4e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **472.4 MB (472440404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43b65d1343944982ba42f3e316dca8916390089ca24ce1c1a5c9f76a9bf5f764`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 05 Oct 2026 18:29:04 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:29:04 GMT
CMD ["/bin/bash"]
# Wed, 14 Oct 2026 17:08:26 GMT
ARG version=21.0.12.13-1
# Wed, 14 Oct 2026 17:08:26 GMT
ARG package_version=1
# Wed, 14 Oct 2026 17:08:26 GMT
# ARGS: version=21.0.12.13-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 14 Oct 2026 17:08:26 GMT
ENV LANG=C.UTF-8
# Wed, 14 Oct 2026 17:08:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Wed, 14 Oct 2026 18:11:47 GMT
CMD ["gradle"]
# Wed, 14 Oct 2026 18:11:47 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 14 Oct 2026 18:11:47 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 14 Oct 2026 18:11:47 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 14 Oct 2026 18:11:47 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 14 Oct 2026 18:11:47 GMT
WORKDIR /home/gradle
# Wed, 14 Oct 2026 18:11:47 GMT
ENV GRADLE_VERSION=9.8.1
# Wed, 14 Oct 2026 18:11:47 GMT
ARG GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
# Wed, 14 Oct 2026 18:11:49 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 14 Oct 2026 18:11:49 GMT
USER gradle
# Wed, 14 Oct 2026 18:11:50 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 14 Oct 2026 18:11:50 GMT
USER root
```

-	Layers:
	-	`sha256:7234d0a9b6ba1270c7bb653ee62a443a1dbb6fdfa833336edd3c0691c2524d1f`  
		Last Modified: Thu, 01 Oct 2026 02:22:29 GMT  
		Size: 54.6 MB (54630770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6584a5c3a7909ba4c18b6d037cae759229ad37eb6e00ec036d91269a0056827`  
		Last Modified: Wed, 14 Oct 2026 17:08:48 GMT  
		Size: 170.5 MB (170461938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c970adb71f97a6027ce2d6d13a7af0fc5bb3ae3c0749e31d1b82bd8782db89f5`  
		Last Modified: Wed, 14 Oct 2026 18:12:28 GMT  
		Size: 95.8 MB (95786801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8705da189559be031ff3da6f5a19f5bdfcbb51ef603f1c3bca52fefc7c533d85`  
		Last Modified: Wed, 14 Oct 2026 18:12:21 GMT  
		Size: 1.6 KB (1645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8195160240ff52444c81502f301178ed37e4d376de0b713207e4bd935b15a3e1`  
		Last Modified: Wed, 14 Oct 2026 18:12:30 GMT  
		Size: 151.5 MB (151533607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:397672a2de98da368916b6dcf68ef12defe819ecdb2cccbd5f422beb1df6c5b2`  
		Last Modified: Wed, 14 Oct 2026 18:12:21 GMT  
		Size: 25.6 KB (25611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk21-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:ff2499795f6a7a4c5adf21df436101bed1dcb4c3dbe7248fcfb6196925a6f0c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12684873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01a4d10b787ee3e28106271d23fa0658a1f9f273874959889bd75f2c4628069c`

```dockerfile
```

-	Layers:
	-	`sha256:aef187837b97df0052ab37f8c2b203f444f4055bcb7e6cbf8cf2b9e08fc27b0b`  
		Last Modified: Wed, 14 Oct 2026 18:12:22 GMT  
		Size: 12.7 MB (12663223 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:875fff32d626d5270422cb69edc988915774ed72feda022069abe8e8d978875f`  
		Last Modified: Wed, 14 Oct 2026 18:12:20 GMT  
		Size: 21.6 KB (21650 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk21-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:d81a724cb68c8e8cf72af8182c1ec989af2925a7f74f37b80851fbed6934cb39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **469.0 MB (469023339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa320f4f47e76a6f4f1704c3b315869d04811571e38c630cad542d9eea3e0b79`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 05 Oct 2026 18:28:31 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:28:31 GMT
CMD ["/bin/bash"]
# Wed, 14 Oct 2026 17:08:25 GMT
ARG version=21.0.12.13-1
# Wed, 14 Oct 2026 17:08:25 GMT
ARG package_version=1
# Wed, 14 Oct 2026 17:08:25 GMT
# ARGS: version=21.0.12.13-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 14 Oct 2026 17:08:25 GMT
ENV LANG=C.UTF-8
# Wed, 14 Oct 2026 17:08:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Wed, 14 Oct 2026 18:11:42 GMT
CMD ["gradle"]
# Wed, 14 Oct 2026 18:11:42 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 14 Oct 2026 18:11:42 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 14 Oct 2026 18:11:42 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 14 Oct 2026 18:11:42 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 14 Oct 2026 18:11:42 GMT
WORKDIR /home/gradle
# Wed, 14 Oct 2026 18:11:42 GMT
ENV GRADLE_VERSION=9.8.1
# Wed, 14 Oct 2026 18:11:42 GMT
ARG GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
# Wed, 14 Oct 2026 18:11:45 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 14 Oct 2026 18:11:45 GMT
USER gradle
# Wed, 14 Oct 2026 18:11:46 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 14 Oct 2026 18:11:46 GMT
USER root
```

-	Layers:
	-	`sha256:3009834f3cf8cead1d3dea9d3cbebc711c021c4aed04759be014247a0c3181e7`  
		Last Modified: Thu, 01 Oct 2026 02:22:31 GMT  
		Size: 53.5 MB (53504398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ca7d2b9a32ce878e9a6c9c4e2beb047fcb9a3c39d653ebcc56c7e27564da16e`  
		Last Modified: Wed, 14 Oct 2026 17:08:48 GMT  
		Size: 168.7 MB (168745656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:704a2a3beb362bdfa275d5ea4da60ad7b79b93f8e9f4e957b60c1f0d787c1d18`  
		Last Modified: Wed, 14 Oct 2026 18:12:20 GMT  
		Size: 95.2 MB (95208658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e051d35afb700083a6d51dc41e61aca22a54af7e8186ff3ed32e38099691af6b`  
		Last Modified: Wed, 14 Oct 2026 18:12:16 GMT  
		Size: 1.6 KB (1645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4280f940513f86ee7cc03605a0ab5304f147798d7ca5ace84e4f5219ccfdddb5`  
		Last Modified: Wed, 14 Oct 2026 18:12:21 GMT  
		Size: 151.5 MB (151533612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a730fbd8340694335f14666956d57e409cad6548d72ccc2bde438d2661087008`  
		Last Modified: Wed, 14 Oct 2026 18:12:16 GMT  
		Size: 29.3 KB (29338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk21-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:8e812586eca30639ef87e1e16966676e26e9e28b183c1bb6c681218a365157e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12684074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0d0e6b5083562827fbf1b27cd58bfe7e1f2dcf99bb02da3a24d62d31055d3a3`

```dockerfile
```

-	Layers:
	-	`sha256:852a0ee767a3c2ef40982bee7be1f9e2505c337876ca96a5711c0b3489bb268f`  
		Last Modified: Wed, 14 Oct 2026 18:12:17 GMT  
		Size: 12.7 MB (12662226 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:853a1aac64fce2b10134bd26361491cfaf385a909408628b41d69fb4010675f8`  
		Last Modified: Wed, 14 Oct 2026 18:12:16 GMT  
		Size: 21.8 KB (21848 bytes)  
		MIME: application/vnd.in-toto+json
