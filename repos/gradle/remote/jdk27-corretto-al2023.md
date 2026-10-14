## `gradle:jdk27-corretto-al2023`

```console
$ docker pull gradle@sha256:918706d152bdd494ceffba95a2bc7318c0f504a60cc35eabd0ed1092e1d5b3f1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:jdk27-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:cb48e6641109d6973514f061cfbed3f1953b9dff673b41bcfa139a5f05fe993d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **493.6 MB (493597768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22da50616eb1e0e1ab356f5923079f2c455629f3a45c3ac59515263dfc5c5ba1`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 05 Oct 2026 18:29:04 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:29:04 GMT
CMD ["/bin/bash"]
# Wed, 14 Oct 2026 17:08:39 GMT
ARG version=27.0.0.36-1
# Wed, 14 Oct 2026 17:08:39 GMT
ARG package_version=1
# Wed, 14 Oct 2026 17:08:39 GMT
# ARGS: version=27.0.0.36-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 14 Oct 2026 17:08:39 GMT
ENV LANG=C.UTF-8
# Wed, 14 Oct 2026 17:08:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
# Wed, 14 Oct 2026 18:11:58 GMT
CMD ["gradle"]
# Wed, 14 Oct 2026 18:11:58 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 14 Oct 2026 18:11:58 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 14 Oct 2026 18:11:58 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 14 Oct 2026 18:11:58 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 14 Oct 2026 18:11:58 GMT
WORKDIR /home/gradle
# Wed, 14 Oct 2026 18:11:58 GMT
ENV GRADLE_VERSION=9.8.1
# Wed, 14 Oct 2026 18:11:58 GMT
ARG GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
# Wed, 14 Oct 2026 18:12:01 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 14 Oct 2026 18:12:01 GMT
USER gradle
# Wed, 14 Oct 2026 18:12:01 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 14 Oct 2026 18:12:01 GMT
USER root
```

-	Layers:
	-	`sha256:7234d0a9b6ba1270c7bb653ee62a443a1dbb6fdfa833336edd3c0691c2524d1f`  
		Last Modified: Thu, 01 Oct 2026 02:22:29 GMT  
		Size: 54.6 MB (54630770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dd77996d87227206893ca08336341c7cabc8af30770ce5cf6c407637b98b137`  
		Last Modified: Wed, 14 Oct 2026 17:09:04 GMT  
		Size: 191.6 MB (191620096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02f4ac0278a4d8d583c3c9309ba14722d8548978c42595be5c04957e870e44d7`  
		Last Modified: Wed, 14 Oct 2026 18:12:35 GMT  
		Size: 95.8 MB (95786004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c687f6da773c784633d7bc702d057a27d0e8bc2bc44ca078fe1c91fda3a52e22`  
		Last Modified: Wed, 14 Oct 2026 18:12:31 GMT  
		Size: 1.6 KB (1645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6fe403bafd8887a4762a377f33a3ac6ce643975eec7989218e7e16efc5c3b30`  
		Last Modified: Wed, 14 Oct 2026 18:12:36 GMT  
		Size: 151.5 MB (151533609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:772724cccf3477107d19c85783a6b4d930a178d5d4fc60f7ad6b377abd65532c`  
		Last Modified: Wed, 14 Oct 2026 18:12:31 GMT  
		Size: 25.6 KB (25612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk27-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:2b2b9f0963af380c52987365b24f428a178da445a2d6d4f1da8158467e7143cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12688208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:383bda18dced22fbc7bdbc4d5134843e8748ba123bcbdd2080fe8b5661b40f5b`

```dockerfile
```

-	Layers:
	-	`sha256:f8aacfc1fec6225b09097609dff93835d9bdd9526514b966e5f91fc0533acfac`  
		Last Modified: Wed, 14 Oct 2026 18:12:31 GMT  
		Size: 12.7 MB (12666557 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a083e27f31a9423a202d4953e48d2a764cd5d0f45abc435126d33ea820621d1`  
		Last Modified: Wed, 14 Oct 2026 18:12:31 GMT  
		Size: 21.7 KB (21651 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk27-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:5e7b5356bea9644842c77d7f1a38625a013f9db99afea14b077f269c6157804b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **489.8 MB (489761848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6ead1e55d4f3e26bf345e0dea951587da16d01a99a510ffd1ab3e6dfe72731a`
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
# Wed, 14 Oct 2026 18:11:46 GMT
CMD ["gradle"]
# Wed, 14 Oct 2026 18:11:46 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 14 Oct 2026 18:11:46 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 14 Oct 2026 18:11:46 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 14 Oct 2026 18:11:46 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 14 Oct 2026 18:11:46 GMT
WORKDIR /home/gradle
# Wed, 14 Oct 2026 18:11:46 GMT
ENV GRADLE_VERSION=9.8.1
# Wed, 14 Oct 2026 18:11:46 GMT
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
	-	`sha256:3009834f3cf8cead1d3dea9d3cbebc711c021c4aed04759be014247a0c3181e7`  
		Last Modified: Thu, 01 Oct 2026 02:22:31 GMT  
		Size: 53.5 MB (53504398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4000c5a59c221b24a005edc6b26320d5dc9d4f050dd1dc8a594660361544b942`  
		Last Modified: Wed, 14 Oct 2026 17:09:09 GMT  
		Size: 189.5 MB (189483670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:920914c08f2b2b7227c2699bbdc2ece9f33e2229d5a659bca4f46089ef47004b`  
		Last Modified: Wed, 14 Oct 2026 18:12:27 GMT  
		Size: 95.2 MB (95209149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0a670f3816cce9fc20f3852bff3177806d8244ae0ae9a8acf4c2f069ab7da76`  
		Last Modified: Wed, 14 Oct 2026 18:12:21 GMT  
		Size: 1.6 KB (1643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:615a15f7483e93493982ffa750c547e6a271e27ef67fb344c63efdfeafbe2926`  
		Last Modified: Wed, 14 Oct 2026 18:12:29 GMT  
		Size: 151.5 MB (151533615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac897cd70a08288b1024a803315e591db3d02070db89832c3e17ad8b36074a8d`  
		Last Modified: Wed, 14 Oct 2026 18:12:21 GMT  
		Size: 29.3 KB (29341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk27-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:f0900dd9766f2fe2d6aa4e5c9605504cf9277b569b33a4fa8e96f8dbf5479806
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12687409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:105b5b17383bf73efa78564aa80d72979ba6e3f4910a00202ea9762e71532e1d`

```dockerfile
```

-	Layers:
	-	`sha256:49d70f07ae60ef170c198e8b0b2d51a02988e0e01d5a1e3b7b3c09e3a7e6226a`  
		Last Modified: Wed, 14 Oct 2026 18:12:22 GMT  
		Size: 12.7 MB (12665561 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1a23b631e3a5d4105bb42095840522c059d0529b5ad165831f863c338164ef08`  
		Last Modified: Wed, 14 Oct 2026 18:12:21 GMT  
		Size: 21.8 KB (21848 bytes)  
		MIME: application/vnd.in-toto+json
