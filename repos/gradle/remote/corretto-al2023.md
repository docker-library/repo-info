## `gradle:corretto-al2023`

```console
$ docker pull gradle@sha256:29d0adf82f332837937855d1d1327e559cba6a37b5e0635c442a4f3569c5e726
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:5860abe02ae8317a50c8a83e5dbf5185f491d7977ee2520a6a2aeb1aaa7ba4a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **491.7 MB (491670899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09a53bca1cf1cf812e4560a6ad644855d9f074371489cb7f40253360698d74ac`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 02 Nov 2026 19:55:48 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 19:55:48 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 20:11:56 GMT
ARG version=25.0.5.0.10-1
# Mon, 02 Nov 2026 20:11:56 GMT
ARG resource_version=25.0.5.0.10
# Mon, 02 Nov 2026 20:11:56 GMT
ARG package_version=1
# Mon, 02 Nov 2026 20:11:56 GMT
# ARGS: version=25.0.5.0.10-1 resource_version=25.0.5.0.10 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 02 Nov 2026 20:11:56 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 20:11:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Mon, 02 Nov 2026 20:44:26 GMT
CMD ["gradle"]
# Mon, 02 Nov 2026 20:44:26 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 02 Nov 2026 20:44:26 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Mon, 02 Nov 2026 20:44:26 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Mon, 02 Nov 2026 20:44:26 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 02 Nov 2026 20:44:26 GMT
WORKDIR /home/gradle
# Mon, 02 Nov 2026 20:44:26 GMT
ENV GRADLE_VERSION=9.8.2
# Mon, 02 Nov 2026 20:44:26 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Mon, 02 Nov 2026 20:44:29 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 02 Nov 2026 20:44:29 GMT
USER gradle
# Mon, 02 Nov 2026 20:44:30 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 02 Nov 2026 20:44:30 GMT
USER root
```

-	Layers:
	-	`sha256:36d0e51e1ea56325505d833f7d87567b6720c396e9a5742de0f157b063545163`  
		Last Modified: Sat, 31 Oct 2026 02:35:05 GMT  
		Size: 54.6 MB (54569615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46c3a6a331ca83d68b24cc42a5e98db1cd9f64b0f4c553267d5c6ea28ebeeb76`  
		Last Modified: Mon, 02 Nov 2026 20:12:19 GMT  
		Size: 189.6 MB (189627480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07f2f70066100f4478edcddf63dbb888d8aa909e0aa2721684634693ba168912`  
		Last Modified: Mon, 02 Nov 2026 20:45:00 GMT  
		Size: 95.9 MB (95912994 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91be38af4e3b8a7966c0603f8bb792df4b6570286f1f45da5cd39c1dc82b8bc2`  
		Last Modified: Mon, 02 Nov 2026 20:44:57 GMT  
		Size: 1.6 KB (1644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22e14822b7268dc2f3022003e761f6ff951518f1bfb1633a402548166415ddea`  
		Last Modified: Mon, 02 Nov 2026 20:45:01 GMT  
		Size: 151.5 MB (151533522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bd356ff8dcac1ad6d535c5bdd71fb6ee0ff5066850233748e2a0d87f3bd7aec`  
		Last Modified: Mon, 02 Nov 2026 20:44:57 GMT  
		Size: 25.6 KB (25612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:8b58501d501df7d86d01997ab542b4fe0aec1a84ecf80e6e0ea93eb515e08aa4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12698467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f718af5b2506bd24affcbc2f6933e900102e969a832bfcdd8ace67aa11813adf`

```dockerfile
```

-	Layers:
	-	`sha256:3b1e17cd49fe293d489ba8243f4fa31e175bfd4477cabc9b0344a6146b7bd3cf`  
		Last Modified: Mon, 02 Nov 2026 20:44:57 GMT  
		Size: 12.7 MB (12676198 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bc206ad215e16b07d4340a0153b9df9ad4d9be5c02ef0ccd3bceb765e5ddee36`  
		Last Modified: Mon, 02 Nov 2026 20:44:57 GMT  
		Size: 22.3 KB (22269 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:3759df14b5cab0930e8542ad8be8c5ede9d9cc9f8d32e774fb5bd8c02e7b8b3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **487.9 MB (487853329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc8da61d9c25daac9ef940df66703260e92a6931d3aa656d02576b3fd33fb792`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 02 Nov 2026 19:55:47 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 19:55:47 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 20:11:21 GMT
ARG version=25.0.5.0.10-1
# Mon, 02 Nov 2026 20:11:21 GMT
ARG resource_version=25.0.5.0.10
# Mon, 02 Nov 2026 20:11:21 GMT
ARG package_version=1
# Mon, 02 Nov 2026 20:11:21 GMT
# ARGS: version=25.0.5.0.10-1 resource_version=25.0.5.0.10 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 02 Nov 2026 20:11:21 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 20:11:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Mon, 02 Nov 2026 20:44:14 GMT
CMD ["gradle"]
# Mon, 02 Nov 2026 20:44:14 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 02 Nov 2026 20:44:14 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Mon, 02 Nov 2026 20:44:14 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Mon, 02 Nov 2026 20:44:14 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 02 Nov 2026 20:44:14 GMT
WORKDIR /home/gradle
# Mon, 02 Nov 2026 20:44:14 GMT
ENV GRADLE_VERSION=9.8.2
# Mon, 02 Nov 2026 20:44:14 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Mon, 02 Nov 2026 20:44:17 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 02 Nov 2026 20:44:17 GMT
USER gradle
# Mon, 02 Nov 2026 20:44:17 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 02 Nov 2026 20:44:17 GMT
USER root
```

-	Layers:
	-	`sha256:c1eee8f81fa5e953bb6eab0ff6f612967f0ef8b1dc9fac3cb2319b1021f7a245`  
		Last Modified: Sat, 31 Oct 2026 02:35:03 GMT  
		Size: 53.5 MB (53456123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa55293fe3e3a8406c108f2b07eb8eb149cb9f5968a7772bc81606bc9fd2a247`  
		Last Modified: Mon, 02 Nov 2026 20:11:46 GMT  
		Size: 187.5 MB (187523723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74196d0f7a9891df2474027f4c91c911a6132f8735a6e9a29d360ea6af16ccd5`  
		Last Modified: Mon, 02 Nov 2026 20:44:52 GMT  
		Size: 95.3 MB (95308856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60093fe49b8b5ca316b9345c56eef464a124f8e660d85125ffc8caaa83646cc1`  
		Last Modified: Mon, 02 Nov 2026 20:44:48 GMT  
		Size: 1.6 KB (1646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e08c7a0cb1f218739f2963765c6c1eba3b3a255d9baae32dbd13609ffaac6d5b`  
		Last Modified: Mon, 02 Nov 2026 20:44:52 GMT  
		Size: 151.5 MB (151533613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ee29150f474eeb57cf16fd5020f93ce5323ac5ae78ed065c7cda0ca133b1511`  
		Last Modified: Mon, 02 Nov 2026 20:44:48 GMT  
		Size: 29.3 KB (29336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:a668d0b56863232b82d6bdb279d70fc8707ad133722829620872f5469abd7ba1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12697725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e04ec32e5e021c7d897697de3396e071739d314fdb937b2267d423eaacc223c2`

```dockerfile
```

-	Layers:
	-	`sha256:e02127e80493bf48c6cd2745a0adde85ad94cf744f024177808519b0568bdaf8`  
		Last Modified: Mon, 02 Nov 2026 20:44:49 GMT  
		Size: 12.7 MB (12675236 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0d90176fb6252ec876cf1162d1f2f0f4bae15eb4395c6ad5ce8617cfd612dc8d`  
		Last Modified: Mon, 02 Nov 2026 20:44:48 GMT  
		Size: 22.5 KB (22489 bytes)  
		MIME: application/vnd.in-toto+json
