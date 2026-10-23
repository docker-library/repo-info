## `gradle:8-jdk11-corretto-al2023`

```console
$ docker pull gradle@sha256:f6163f0ccb8a0f102b8028c7f7e995465b4923ee50280b7934f18acb2971ff55
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:8-jdk11-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:053da8fe27e298f38c0a483280783a82c48cdeadf0179669b0ac4071a0f4f348
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **443.4 MB (443438431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34363abc3ab23a701d7b3982a4896111a0e73ecf6e8f1d530e9fa61086cb0566`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:03 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:03 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 01:09:49 GMT
ARG version=11.0.32.13-1
# Fri, 23 Oct 2026 01:09:49 GMT
# ARGS: version=11.0.32.13-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-jmods-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 01:09:49 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 01:09:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Fri, 23 Oct 2026 02:10:04 GMT
CMD ["gradle"]
# Fri, 23 Oct 2026 02:10:04 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 23 Oct 2026 02:10:04 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 23 Oct 2026 02:10:04 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 23 Oct 2026 02:10:04 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 23 Oct 2026 02:10:04 GMT
WORKDIR /home/gradle
# Fri, 23 Oct 2026 02:10:04 GMT
ENV GRADLE_VERSION=8.14.6
# Fri, 23 Oct 2026 02:10:04 GMT
ARG GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
# Fri, 23 Oct 2026 02:10:07 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 23 Oct 2026 02:10:07 GMT
USER gradle
# Fri, 23 Oct 2026 02:10:08 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 23 Oct 2026 02:10:08 GMT
USER root
```

-	Layers:
	-	`sha256:da3e7a9e0d7ce8bd2e34f464f7fc47c97dde7880b26078690ed76ef5809d8b69`  
		Last Modified: Thu, 22 Oct 2026 01:38:41 GMT  
		Size: 54.6 MB (54648920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:418a238aa5530f7b96ac60bba940b6101df3b89be81e9a704a20c3fdf54fff5a`  
		Last Modified: Fri, 23 Oct 2026 01:10:10 GMT  
		Size: 153.5 MB (153508042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee4dabfe02eb0f86f07004b183c744476ed62e8bb7fed64e062a9831d1338def`  
		Last Modified: Fri, 23 Oct 2026 02:10:41 GMT  
		Size: 95.8 MB (95797548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcabe1beed8bac64be23516c7807c0efe0f1973a691dc10eb113554b516ee098`  
		Last Modified: Fri, 23 Oct 2026 02:10:36 GMT  
		Size: 1.6 KB (1644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:277daf7bfd8c343cfeb91328385acbdb3a02e37afeae7d5abbf7182cf4f73db3`  
		Last Modified: Fri, 23 Oct 2026 02:10:42 GMT  
		Size: 139.4 MB (139427344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c350f03381fa221646c5d50e26bf6190be6be2b91533073c1fd2891b4abe983`  
		Last Modified: Fri, 23 Oct 2026 02:10:36 GMT  
		Size: 54.9 KB (54901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk11-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:805f2827450408fb16c11a0a4d1fba474758edd866d8d387ec33844848bcb16e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12674477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d9229bb4a0c7a1b7ebdc7dbc8d2f6502be7754cb04cac2962d88cb0c97a81c4`

```dockerfile
```

-	Layers:
	-	`sha256:6427a46c050955e762c937cfb5764762ca8417a7a5a78c5dd3f1191edf60271c`  
		Last Modified: Fri, 23 Oct 2026 02:10:37 GMT  
		Size: 12.7 MB (12652812 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ba6ab603b35d66f2e0592e89f7c2bed192cd1ffdbc397e63378ff6460c2f1e4`  
		Last Modified: Fri, 23 Oct 2026 02:10:37 GMT  
		Size: 21.7 KB (21665 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:8-jdk11-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:c92f4f8e58d9ce87095a85ff7b9bcffa1d04a3d32af7eb073d9c1d902fda75cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **440.3 MB (440316040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91d77f2f3ae228de7802a45ac4b4b3bfc531b26c3fd5423f4e2116dfaf60d679`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 23 Oct 2026 00:40:43 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:40:43 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 01:09:41 GMT
ARG version=11.0.32.13-1
# Fri, 23 Oct 2026 01:09:41 GMT
# ARGS: version=11.0.32.13-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-jmods-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 01:09:41 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 01:09:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Fri, 23 Oct 2026 02:09:55 GMT
CMD ["gradle"]
# Fri, 23 Oct 2026 02:09:55 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 23 Oct 2026 02:09:55 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 23 Oct 2026 02:09:56 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 23 Oct 2026 02:09:56 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 23 Oct 2026 02:09:56 GMT
WORKDIR /home/gradle
# Fri, 23 Oct 2026 02:09:56 GMT
ENV GRADLE_VERSION=8.14.6
# Fri, 23 Oct 2026 02:09:56 GMT
ARG GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
# Fri, 23 Oct 2026 02:10:00 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 23 Oct 2026 02:10:00 GMT
USER gradle
# Fri, 23 Oct 2026 02:10:01 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 23 Oct 2026 02:10:01 GMT
USER root
```

-	Layers:
	-	`sha256:b9de6aa56dd75608aa129f8d7c4af23dae5b1bb2a5a2edb4e9acfd307a0af336`  
		Last Modified: Thu, 22 Oct 2026 02:52:33 GMT  
		Size: 53.5 MB (53529316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42a884ab574196d516fe39d594a2d34a48754fb7bbd204b96bd2e83f0c8c36bb`  
		Last Modified: Fri, 23 Oct 2026 01:10:02 GMT  
		Size: 152.1 MB (152082226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45735e92bbce3777f53001318c6e300c38fdc547d982dafe96fd7372f8e2a4a7`  
		Last Modified: Fri, 23 Oct 2026 02:10:34 GMT  
		Size: 95.2 MB (95215948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eec6a80ebc94c77c6c7a42f805ca94819f237ed8476b69c47c1836bee130d0ea`  
		Last Modified: Fri, 23 Oct 2026 02:10:31 GMT  
		Size: 1.6 KB (1644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:915ac85849cf2036de0efd2edc2207f02b1b0fa4ff19f56915175bcf51ef5d6d`  
		Last Modified: Fri, 23 Oct 2026 02:10:35 GMT  
		Size: 139.4 MB (139427344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50fe75ae66a84d1d686437c678fc1394c8dbcaeb655cb72cccb4bca1aff8b594`  
		Last Modified: Fri, 23 Oct 2026 02:10:31 GMT  
		Size: 59.5 KB (59530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk11-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:8d9bd0252f0e58dc2a041263708dad9685488849f35a079f5cbf73704784a360
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12674517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2bbb4b834881185bb38d274d312ca3a77c88438687545b1554396952e3c6ca2`

```dockerfile
```

-	Layers:
	-	`sha256:1b6249388ae5953107ff562ed99027b0488226cc73307eb5f0505251f0101b64`  
		Last Modified: Fri, 23 Oct 2026 02:10:31 GMT  
		Size: 12.7 MB (12652655 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3c1dbad88cbfc25ab56180f3ba7853820fdce1d771e327f374351d634ec53bd`  
		Last Modified: Fri, 23 Oct 2026 02:10:31 GMT  
		Size: 21.9 KB (21862 bytes)  
		MIME: application/vnd.in-toto+json
