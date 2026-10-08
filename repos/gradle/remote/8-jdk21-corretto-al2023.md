## `gradle:8-jdk21-corretto-al2023`

```console
$ docker pull gradle@sha256:c91469070195df13f0abbdae4e804ff43861d86742d333429f92ed0b39122710
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:8-jdk21-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:e11c6abf03c2f9b686dc2fa2c833901ba303eea986b8b4c83cb8825d070b9075
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **460.4 MB (460361718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3134e6e7eba250311f325142f4ee4a4affc6242b2caecd70c0fa0c4c73baf3e`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 05 Oct 2026 18:29:04 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:29:04 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 18:44:10 GMT
ARG version=21.0.12.12-1
# Mon, 05 Oct 2026 18:44:10 GMT
ARG package_version=1
# Mon, 05 Oct 2026 18:44:10 GMT
# ARGS: version=21.0.12.12-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 05 Oct 2026 18:44:10 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 18:44:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Thu, 08 Oct 2026 16:42:52 GMT
CMD ["gradle"]
# Thu, 08 Oct 2026 16:42:52 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 08 Oct 2026 16:42:52 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 08 Oct 2026 16:42:53 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 08 Oct 2026 16:42:53 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 08 Oct 2026 16:42:53 GMT
WORKDIR /home/gradle
# Thu, 08 Oct 2026 16:42:53 GMT
ENV GRADLE_VERSION=8.14.6
# Thu, 08 Oct 2026 16:42:53 GMT
ARG GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
# Thu, 08 Oct 2026 16:42:55 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 08 Oct 2026 16:42:55 GMT
USER gradle
# Thu, 08 Oct 2026 16:42:55 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 08 Oct 2026 16:42:55 GMT
USER root
```

-	Layers:
	-	`sha256:7234d0a9b6ba1270c7bb653ee62a443a1dbb6fdfa833336edd3c0691c2524d1f`  
		Last Modified: Thu, 01 Oct 2026 02:22:29 GMT  
		Size: 54.6 MB (54630770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f45e4391e22f1759d68e1a3a7a295d0366f595ceb417fa62afc5870b3aa4d56`  
		Last Modified: Mon, 05 Oct 2026 18:44:34 GMT  
		Size: 170.5 MB (170461125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a5e88268b50f005654dd8a49ef41a634f689f98b292cb74450658c8ce20eb42`  
		Last Modified: Thu, 08 Oct 2026 16:43:26 GMT  
		Size: 95.8 MB (95785902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f9e9b0747a2d442a548a681f68c0376a6cb80b79817fb5bfcb04841abd83e0d`  
		Last Modified: Thu, 08 Oct 2026 16:43:21 GMT  
		Size: 1.6 KB (1647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91e9d4b12f8c8405090333c3abe744d3cf8191e5ab9022d6e7a2666b8591c7d0`  
		Last Modified: Thu, 08 Oct 2026 16:43:27 GMT  
		Size: 139.4 MB (139427344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58aac0b1ae6ae91f1033476c54a4006598ee57b6489e2dfe4047fb44b9d51da8`  
		Last Modified: Thu, 08 Oct 2026 16:43:21 GMT  
		Size: 54.9 KB (54898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk21-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:c01aa937eb6677fc4b7da4fd726abda49ca1aede1c26d8e78697c8001a1ff097
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12650822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f17958254b34f327923cc446ae8b2236f4abaae71e3092a657b35ef090b4e5e3`

```dockerfile
```

-	Layers:
	-	`sha256:5db3086eec1ed6b3364b65faa8673e947cfd9c0d3f91e82a08d778a4bbe49d12`  
		Last Modified: Thu, 08 Oct 2026 16:43:21 GMT  
		Size: 12.6 MB (12629799 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e69643b66d134fb51cf9caada444e6025ac8116d691918fdba35ce6d32f8a90`  
		Last Modified: Thu, 08 Oct 2026 16:43:21 GMT  
		Size: 21.0 KB (21023 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:8-jdk21-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:9816be8cc3b86a0f4d1de3de618acd8a1177cf1d8d5efa08600f5a5e3b826ca4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **456.9 MB (456945376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18f037d5acfc4dff89bcf8669098b7d5a352b0245e9581d2e1225a57f5dab555`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 05 Oct 2026 18:28:31 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:28:31 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 18:43:19 GMT
ARG version=21.0.12.12-1
# Mon, 05 Oct 2026 18:43:19 GMT
ARG package_version=1
# Mon, 05 Oct 2026 18:43:19 GMT
# ARGS: version=21.0.12.12-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 05 Oct 2026 18:43:19 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 18:43:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Thu, 08 Oct 2026 16:42:44 GMT
CMD ["gradle"]
# Thu, 08 Oct 2026 16:42:44 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 08 Oct 2026 16:42:44 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 08 Oct 2026 16:42:44 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 08 Oct 2026 16:42:44 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 08 Oct 2026 16:42:44 GMT
WORKDIR /home/gradle
# Thu, 08 Oct 2026 16:42:44 GMT
ENV GRADLE_VERSION=8.14.6
# Thu, 08 Oct 2026 16:42:44 GMT
ARG GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
# Thu, 08 Oct 2026 16:42:47 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 08 Oct 2026 16:42:47 GMT
USER gradle
# Thu, 08 Oct 2026 16:42:48 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 08 Oct 2026 16:42:48 GMT
USER root
```

-	Layers:
	-	`sha256:3009834f3cf8cead1d3dea9d3cbebc711c021c4aed04759be014247a0c3181e7`  
		Last Modified: Thu, 01 Oct 2026 02:22:31 GMT  
		Size: 53.5 MB (53504398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5a44d8ff57bcba40c933a2843db84b8c8a4ace48d600a72ccd6270282860850`  
		Last Modified: Mon, 05 Oct 2026 18:43:43 GMT  
		Size: 168.7 MB (168743482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d187fb8cd3317e46dc5f02bfd83d010f177462042c4727095393b0598a5ed70`  
		Last Modified: Thu, 08 Oct 2026 16:43:23 GMT  
		Size: 95.2 MB (95208933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e13b7190d03316481269350c075c73fbac06ca4c09cba6cbd43e68e6ed861d8e`  
		Last Modified: Thu, 08 Oct 2026 16:43:17 GMT  
		Size: 1.6 KB (1645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e165be1bc97951fe8a2239c39cc5a3aac30ef9798f8f131848050cd2c3a23cb`  
		Last Modified: Thu, 08 Oct 2026 16:43:24 GMT  
		Size: 139.4 MB (139427348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8fb91494e45f7dc9d0475bdcc7a0b7c5bcd66de218a1cc5cb33674420b2ef36`  
		Last Modified: Thu, 08 Oct 2026 16:43:18 GMT  
		Size: 59.5 KB (59538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk21-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:65dc0bbdf9229f51720afec8509ccc115944300effaf23ee3f19861b57937409
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.6 MB (12649974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a4ba2b5ef671f14c4ef03e3146a1f2c3f20d8ee134ee359f2c8caeb69a11d86`

```dockerfile
```

-	Layers:
	-	`sha256:9a41e50fcc1e22d3666dc0b5d8c977495b4b3e08300c3073aacda1512d04ae46`  
		Last Modified: Thu, 08 Oct 2026 16:43:18 GMT  
		Size: 12.6 MB (12628778 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f516c7a990983d0e846abe3edeb8c1d90de37eb1ad6964ecf50c30c018151c5`  
		Last Modified: Thu, 08 Oct 2026 16:43:17 GMT  
		Size: 21.2 KB (21196 bytes)  
		MIME: application/vnd.in-toto+json
