## `gradle:jdk27-corretto-al2023`

```console
$ docker pull gradle@sha256:716389ba0a82eae3df0419038ae918a56c17deef94a81474c2cd411026692fa0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:jdk27-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:afcb7138ccd9537a13c4d90927130070502d24e2ff8f0b6e6d2dca153290360c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **493.6 MB (493569109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b42ae4a7163757db22bb8163d8277d25d47c0dc6a58b6b8536bb17edf2040af`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 05 Oct 2026 18:29:04 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:29:04 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 18:44:50 GMT
ARG version=27.0.0.35-1
# Mon, 05 Oct 2026 18:44:50 GMT
ARG package_version=1
# Mon, 05 Oct 2026 18:44:50 GMT
# ARGS: version=27.0.0.35-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 05 Oct 2026 18:44:50 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 18:44:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
# Mon, 05 Oct 2026 21:14:58 GMT
CMD ["gradle"]
# Mon, 05 Oct 2026 21:14:58 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 05 Oct 2026 21:14:58 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Mon, 05 Oct 2026 21:14:59 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Mon, 05 Oct 2026 21:14:59 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 05 Oct 2026 21:14:59 GMT
WORKDIR /home/gradle
# Mon, 05 Oct 2026 21:14:59 GMT
ENV GRADLE_VERSION=9.8.0
# Mon, 05 Oct 2026 21:14:59 GMT
ARG GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
# Mon, 05 Oct 2026 21:15:01 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 05 Oct 2026 21:15:01 GMT
USER gradle
# Mon, 05 Oct 2026 21:15:02 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 05 Oct 2026 21:15:02 GMT
USER root
```

-	Layers:
	-	`sha256:7234d0a9b6ba1270c7bb653ee62a443a1dbb6fdfa833336edd3c0691c2524d1f`  
		Last Modified: Thu, 01 Oct 2026 02:22:29 GMT  
		Size: 54.6 MB (54630770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a9fecedb083f8db9b0efc4e1a78119cd12e20a5b54ece0868cf0b84ec1b2fa9`  
		Last Modified: Mon, 05 Oct 2026 18:45:13 GMT  
		Size: 191.6 MB (191600990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa402da219ca47aae95c10d9bd0305410850f5d0a00daae0c244a59b4a5748ea`  
		Last Modified: Mon, 05 Oct 2026 21:15:34 GMT  
		Size: 95.8 MB (95785805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ab4d846908427addf4ad3297aada82b7fdfdb7f20015751fb774da3a39b7046`  
		Last Modified: Mon, 05 Oct 2026 21:15:30 GMT  
		Size: 1.6 KB (1647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a188a3a1295abcddb03c68ac0faa92964584b75ae7499ad1347951d01bb3990`  
		Last Modified: Mon, 05 Oct 2026 21:15:35 GMT  
		Size: 151.5 MB (151524258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29f4ccc6e56089aebfae54f9f19f06d77cf5f5cc6a3aa93d51918e0914f205de`  
		Last Modified: Mon, 05 Oct 2026 21:15:30 GMT  
		Size: 25.6 KB (25607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk27-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:6357f47ddcc0f6f2b96de5c2701117123be171f8de31f2d3cefea64e2e31eefd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12688208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:037f798bd844015fe060fc19f0fa6de71af616c42d2e727fc7b624eed44240fa`

```dockerfile
```

-	Layers:
	-	`sha256:cf65451a69f3fa3c3a3314d4030dfbd9b6de26d54384e5e5ede43af759334185`  
		Last Modified: Mon, 05 Oct 2026 21:15:31 GMT  
		Size: 12.7 MB (12666557 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:58d844d25d8248ab3f2c5068097e5924bad4389faac2dc14c38d21554e879409`  
		Last Modified: Mon, 05 Oct 2026 21:15:30 GMT  
		Size: 21.7 KB (21651 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk27-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:569a132d06198b408781e9e9f15b436485295e92ed70a778fe1f50e624478d6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **489.7 MB (489729385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70b875b58a63d39bf76da12e419dd8bbaca6b4b082ab5e2988b215c2760f700f`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 05 Oct 2026 18:28:31 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:28:31 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 18:44:09 GMT
ARG version=27.0.0.35-1
# Mon, 05 Oct 2026 18:44:09 GMT
ARG package_version=1
# Mon, 05 Oct 2026 18:44:09 GMT
# ARGS: version=27.0.0.35-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 05 Oct 2026 18:44:09 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 18:44:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
# Mon, 05 Oct 2026 21:14:54 GMT
CMD ["gradle"]
# Mon, 05 Oct 2026 21:14:54 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 05 Oct 2026 21:14:54 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Mon, 05 Oct 2026 21:14:54 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Mon, 05 Oct 2026 21:14:54 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 05 Oct 2026 21:14:54 GMT
WORKDIR /home/gradle
# Mon, 05 Oct 2026 21:14:54 GMT
ENV GRADLE_VERSION=9.8.0
# Mon, 05 Oct 2026 21:14:54 GMT
ARG GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
# Mon, 05 Oct 2026 21:14:57 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 05 Oct 2026 21:14:57 GMT
USER gradle
# Mon, 05 Oct 2026 21:14:58 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 05 Oct 2026 21:14:58 GMT
USER root
```

-	Layers:
	-	`sha256:3009834f3cf8cead1d3dea9d3cbebc711c021c4aed04759be014247a0c3181e7`  
		Last Modified: Thu, 01 Oct 2026 02:22:31 GMT  
		Size: 53.5 MB (53504398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ea642f3ab24024dfd9a45a27b54f0911a3224cb29a60f6e27a4ed65eb137162`  
		Last Modified: Mon, 05 Oct 2026 18:44:34 GMT  
		Size: 189.5 MB (189461229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3982732c90418ae2e86756804937d0dc0cecdba7994e3513e2b01706218fd447`  
		Last Modified: Mon, 05 Oct 2026 21:15:32 GMT  
		Size: 95.2 MB (95208451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7a750576207ed500bc5d8a5ab4131ffd9891e188c317f12f10d4eb032a4e655`  
		Last Modified: Mon, 05 Oct 2026 21:15:28 GMT  
		Size: 1.6 KB (1646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a500e3157d7f027e036fc45b5bab6b75dca17ef60b5f0b1e80ca1c1f73efa0de`  
		Last Modified: Mon, 05 Oct 2026 21:15:33 GMT  
		Size: 151.5 MB (151524289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd6587047c4140957ea94e7d9eb2f2b95c91c4badbb51fedc694b7e37a9cb682`  
		Last Modified: Mon, 05 Oct 2026 21:15:29 GMT  
		Size: 29.3 KB (29340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk27-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:b846db6901804e30dbc8cb3680015f35922e0669504361324a16881b7add357b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12687409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7ac5d35be20871cbe0cda543173358ae88536fd658c11a89060e3d3f20da04a`

```dockerfile
```

-	Layers:
	-	`sha256:8d0133fbdb92618a94034fdbb86cb933467bbc574073fb5dc322c8e9460f333c`  
		Last Modified: Mon, 05 Oct 2026 21:15:29 GMT  
		Size: 12.7 MB (12665561 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e7595d37d2e7cb362c7eb2703e7baf52c9247b2decea1a1afe666fdb819cfd3d`  
		Last Modified: Mon, 05 Oct 2026 21:15:28 GMT  
		Size: 21.8 KB (21848 bytes)  
		MIME: application/vnd.in-toto+json
