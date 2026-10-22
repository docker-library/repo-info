## `gradle:jdk27-corretto-al2023`

```console
$ docker pull gradle@sha256:01b21e80a7b5efdcfd294e9444b5d162b60de28d39241d5a989c4d0768b64f2c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:jdk27-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:a98733be1188d9b933a52fc297115be6f741299dbc9073e3e4cb6f4965f63861
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **493.6 MB (493598046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99cbe69565ac45bc12753473c0b68c64aa74232df6f2707c9da878c10d126b40`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 21 Oct 2026 22:45:19 GMT
COPY /rootfs/ / # buildkit
# Wed, 21 Oct 2026 22:45:19 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 23:29:32 GMT
ARG version=27.0.0.36-1
# Wed, 21 Oct 2026 23:29:32 GMT
ARG package_version=1
# Wed, 21 Oct 2026 23:29:32 GMT
# ARGS: version=27.0.0.36-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 21 Oct 2026 23:29:32 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 23:29:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
# Thu, 22 Oct 2026 00:16:15 GMT
CMD ["gradle"]
# Thu, 22 Oct 2026 00:16:15 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 22 Oct 2026 00:16:15 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 22 Oct 2026 00:16:15 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 22 Oct 2026 00:16:15 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 22 Oct 2026 00:16:15 GMT
WORKDIR /home/gradle
# Thu, 22 Oct 2026 00:16:15 GMT
ENV GRADLE_VERSION=9.8.2
# Thu, 22 Oct 2026 00:16:15 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Thu, 22 Oct 2026 00:16:18 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 22 Oct 2026 00:16:18 GMT
USER gradle
# Thu, 22 Oct 2026 00:16:18 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 22 Oct 2026 00:16:18 GMT
USER root
```

-	Layers:
	-	`sha256:7234d0a9b6ba1270c7bb653ee62a443a1dbb6fdfa833336edd3c0691c2524d1f`  
		Last Modified: Thu, 01 Oct 2026 02:22:29 GMT  
		Size: 54.6 MB (54630770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c59916f3236e2620f65c7c2567b609aae89a0744db1c3956ef12e05bb02a06c1`  
		Last Modified: Wed, 21 Oct 2026 23:29:55 GMT  
		Size: 191.6 MB (191620231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb685a6086a1f408857286d8db284b7f6a959c79ba3a37b46e5cebc4dfa5a366`  
		Last Modified: Thu, 22 Oct 2026 00:16:49 GMT  
		Size: 95.8 MB (95786150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4a980ff4a809474631983fbd2fe8504141968adf289255cb8800088407d44a2`  
		Last Modified: Thu, 22 Oct 2026 00:16:45 GMT  
		Size: 1.6 KB (1645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a153e29960b3c89ae40c7339da27c02d02b135f8b370dd9ee67daa1047fd899`  
		Last Modified: Thu, 22 Oct 2026 00:16:50 GMT  
		Size: 151.5 MB (151533609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb3d7b10b21bb4c7e847ef772207cf64b65432dc81ac0db8bcfa9a66248d978b`  
		Last Modified: Thu, 22 Oct 2026 00:16:45 GMT  
		Size: 25.6 KB (25609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk27-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:169dd2dde0e7b2bdee205a6534645988cc764745838194f8b75b47d33c7052cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12688208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:562ebee163c1f52760ddba5b1cac5594ed14f699ee65f41fabe4282286e93d95`

```dockerfile
```

-	Layers:
	-	`sha256:6a39a112464880871065c8b2ec3fd743e8564d89c0535889bcf9f2965001d211`  
		Last Modified: Thu, 22 Oct 2026 00:16:46 GMT  
		Size: 12.7 MB (12666557 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5eb6a275276474316c22c94dc8de207467c4c5172a853064f3c457fdebc9311c`  
		Last Modified: Thu, 22 Oct 2026 00:16:45 GMT  
		Size: 21.7 KB (21651 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk27-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:24d99ce90e3f32d82feac1596e3002520b4d23de01a93eeb1e78a220015ce14f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **489.8 MB (489760379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9051bab1ccc70309d4f5d2a1647cee016513094c5d4566b04f1f7a579d83d084`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 05 Oct 2026 18:28:31 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:28:31 GMT
CMD ["/bin/bash"]
# Wed, 14 Oct 2026 17:08:42 GMT
ARG version=27.0.0.36-1
# Wed, 14 Oct 2026 17:08:42 GMT
ARG package_version=1
# Wed, 14 Oct 2026 17:08:42 GMT
# ARGS: version=27.0.0.36-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 14 Oct 2026 17:08:42 GMT
ENV LANG=C.UTF-8
# Wed, 14 Oct 2026 17:08:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
# Tue, 20 Oct 2026 17:56:19 GMT
CMD ["gradle"]
# Tue, 20 Oct 2026 17:56:19 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 20 Oct 2026 17:56:19 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 20 Oct 2026 17:56:19 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 20 Oct 2026 17:56:19 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 20 Oct 2026 17:56:19 GMT
WORKDIR /home/gradle
# Tue, 20 Oct 2026 17:56:19 GMT
ENV GRADLE_VERSION=9.8.2
# Tue, 20 Oct 2026 17:56:19 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Tue, 20 Oct 2026 17:56:22 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 20 Oct 2026 17:56:22 GMT
USER gradle
# Tue, 20 Oct 2026 17:56:23 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 20 Oct 2026 17:56:23 GMT
USER root
```

-	Layers:
	-	`sha256:3009834f3cf8cead1d3dea9d3cbebc711c021c4aed04759be014247a0c3181e7`  
		Last Modified: Thu, 01 Oct 2026 02:22:31 GMT  
		Size: 53.5 MB (53504398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4000c5a59c221b24a005edc6b26320d5dc9d4f050dd1dc8a594660361544b942`  
		Last Modified: Wed, 14 Oct 2026 17:09:09 GMT  
		Size: 189.5 MB (189483670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69179d18cad13aba20a97e09f5c1ddb874d43637401dc19a33bc2e82c7b583fb`  
		Last Modified: Tue, 20 Oct 2026 17:56:57 GMT  
		Size: 95.2 MB (95207685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da3acfbcf619f9e5c456965d5b12725e867be64db862449c92fd8fa474050225`  
		Last Modified: Tue, 20 Oct 2026 17:56:53 GMT  
		Size: 1.6 KB (1645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11e63ebde96e66647b876735b7c3d8522359decdadbb4155a00a03e83b53ab5c`  
		Last Modified: Tue, 20 Oct 2026 17:56:58 GMT  
		Size: 151.5 MB (151533614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c4f71776836a4fb7803e13dc1c4dbb7435fdcf8b4c97a6f04788be2e5220d63`  
		Last Modified: Tue, 20 Oct 2026 17:56:53 GMT  
		Size: 29.3 KB (29335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk27-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:8cb2a20bd967617ac1f387c73ad157816fcde69a7bd8c98da8830ab7d3c9d1bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12687409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e020d4864cf89e6758ea19bee9cdc267dbb780ea56855fc8fa1b4034c99a9919`

```dockerfile
```

-	Layers:
	-	`sha256:999b577cb9f687224e1ef3f5c3989c4f74098c84c85ae28ae7fbc23f1a3c503d`  
		Last Modified: Tue, 20 Oct 2026 17:56:54 GMT  
		Size: 12.7 MB (12665561 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ea227c18c13533dfdce3c56d469c4249997f3ca71cf44710c63c1a8ac571538`  
		Last Modified: Tue, 20 Oct 2026 17:56:53 GMT  
		Size: 21.8 KB (21848 bytes)  
		MIME: application/vnd.in-toto+json
