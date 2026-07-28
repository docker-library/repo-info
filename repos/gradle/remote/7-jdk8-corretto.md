## `gradle:7-jdk8-corretto`

```console
$ docker pull gradle@sha256:bc6830bff746e0d73f35c947f68aa8bedcf3e86a75ba5d864659aa4824c8a5e7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:7-jdk8-corretto` - linux; amd64

```console
$ docker pull gradle@sha256:1f15edd0df071f31e45eb290d0a061c50015a18e6ee65047166ee9ea41407567
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **387.8 MB (387837477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a25944c2f2c156d5462a6d6a5c894c7676f1c19392d3518a2ad9f590ed3776f5`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 27 Jul 2026 21:19:13 GMT
COPY /rootfs/ / # buildkit
# Mon, 27 Jul 2026 21:19:13 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 21:35:34 GMT
ARG version=1.8.0_502.b07-1
# Mon, 27 Jul 2026 21:35:34 GMT
# ARGS: version=1.8.0_502.b07-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 27 Jul 2026 21:35:34 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 21:35:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Mon, 27 Jul 2026 22:02:44 GMT
CMD ["gradle"]
# Mon, 27 Jul 2026 22:02:44 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 27 Jul 2026 22:02:44 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         tar                 unzip         wget         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Mon, 27 Jul 2026 22:02:44 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Mon, 27 Jul 2026 22:02:44 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 27 Jul 2026 22:02:44 GMT
WORKDIR /home/gradle
# Mon, 27 Jul 2026 22:02:44 GMT
ENV GRADLE_VERSION=7.6.6
# Mon, 27 Jul 2026 22:02:44 GMT
ARG GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
# Mon, 27 Jul 2026 22:02:47 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 27 Jul 2026 22:02:47 GMT
USER gradle
# Mon, 27 Jul 2026 22:02:47 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Mon, 27 Jul 2026 22:02:47 GMT
USER root
```

-	Layers:
	-	`sha256:5492e2c54dedbfa8cbd57605d23f9468dae3f869273566ed212185e48340d5d5`  
		Last Modified: Fri, 24 Jul 2026 21:00:37 GMT  
		Size: 54.6 MB (54572684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e34f0458b32a0e7be86d2d43807bdd99d0ab8315ea76059ed56267a9165ea983`  
		Last Modified: Mon, 27 Jul 2026 21:35:53 GMT  
		Size: 118.1 MB (118076125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16fbc0d11072da586e2588db5a871f92b0c956dcdf6204b227fb4c18c540664f`  
		Last Modified: Mon, 27 Jul 2026 22:03:18 GMT  
		Size: 86.7 MB (86662670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c7e04d708a23848c4f41143a85287f2eec001346cbfa25dd5e25a284a81ae57`  
		Last Modified: Mon, 27 Jul 2026 22:03:14 GMT  
		Size: 1.6 KB (1648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7fd9d1c44a476589a6e3a54487fa91b0c3fd88d4c8334497705d7f7076564a8`  
		Last Modified: Mon, 27 Jul 2026 22:03:20 GMT  
		Size: 128.5 MB (128469416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5108e383c320843de3ea479585822ec7b536fcf2c9c21db2dd123f10c6c2769b`  
		Last Modified: Mon, 27 Jul 2026 22:03:15 GMT  
		Size: 54.9 KB (54902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:7-jdk8-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:90ca2a6cd29523f9c7d987e0d13999da6f200446b9829f358fc937be16ecf190
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.7 MB (11664281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9515bb161e512ae828adc1fa12402a806a46ce1c869afa6c5935933ba543f7c6`

```dockerfile
```

-	Layers:
	-	`sha256:e6b4372112d642fe35808344c9e3eebf2ff709ae4b6b41d1889c97054a96860d`  
		Last Modified: Mon, 27 Jul 2026 22:03:15 GMT  
		Size: 11.6 MB (11643417 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2e9c58fcf1cc15b779d419ac69147cfa90b8e8b8f2c1ee751ee3ca17370bc60f`  
		Last Modified: Mon, 27 Jul 2026 22:03:14 GMT  
		Size: 20.9 KB (20864 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:7-jdk8-corretto` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:63eef036ad3bd4b3d12e6c8b2ab96cc77f46179e18d7266ee9d26bdcf7fc8ff5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **386.0 MB (385979492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78098e802c065252fc63dbf3321db03e64a305ccf7f3bbb719b9cd517995240d`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 27 Jul 2026 21:19:12 GMT
COPY /rootfs/ / # buildkit
# Mon, 27 Jul 2026 21:19:12 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 21:35:11 GMT
ARG version=1.8.0_502.b07-1
# Mon, 27 Jul 2026 21:35:11 GMT
# ARGS: version=1.8.0_502.b07-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 27 Jul 2026 21:35:11 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 21:35:11 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Mon, 27 Jul 2026 22:01:33 GMT
CMD ["gradle"]
# Mon, 27 Jul 2026 22:01:33 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 27 Jul 2026 22:01:33 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         tar                 unzip         wget         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Mon, 27 Jul 2026 22:01:33 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Mon, 27 Jul 2026 22:01:33 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 27 Jul 2026 22:01:33 GMT
WORKDIR /home/gradle
# Mon, 27 Jul 2026 22:01:33 GMT
ENV GRADLE_VERSION=7.6.6
# Mon, 27 Jul 2026 22:01:33 GMT
ARG GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
# Mon, 27 Jul 2026 22:01:36 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 27 Jul 2026 22:01:36 GMT
USER gradle
# Mon, 27 Jul 2026 22:01:36 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Mon, 27 Jul 2026 22:01:36 GMT
USER root
```

-	Layers:
	-	`sha256:07006faf6af6164a3570dfc90b2fce3d8038766e9e8572e8cc38b3a1eb8bbdd7`  
		Last Modified: Fri, 24 Jul 2026 21:55:34 GMT  
		Size: 53.4 MB (53449611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a751c274860331fcd022c968b38d60fa8d18146ef1eff3108884f678c36690c6`  
		Last Modified: Mon, 27 Jul 2026 21:35:30 GMT  
		Size: 118.0 MB (117964902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:895b6d1bb11da629fa65dfe15cdc26dc147b7a5ce596dc432f9bb313848d3b54`  
		Last Modified: Mon, 27 Jul 2026 22:02:06 GMT  
		Size: 86.0 MB (86034312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaf2d1936f03a2d25a3b4e9171618cb21e02027e69cb57b6ff298f8f597b9ca6`  
		Last Modified: Mon, 27 Jul 2026 22:02:03 GMT  
		Size: 1.6 KB (1646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c806a7b3d1bf2ad5374ebc9729a553550965196155e6c0fb170d084e959febd8`  
		Last Modified: Mon, 27 Jul 2026 22:02:07 GMT  
		Size: 128.5 MB (128469469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3397f06288292a9c827dbdc692d3359879ab4f1151bfd993551836d8ef4bb718`  
		Last Modified: Mon, 27 Jul 2026 22:02:03 GMT  
		Size: 59.5 KB (59520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:7-jdk8-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:45ef5cd7c8402c44c61fa4d39a27e0e6591e3dc9fdf633c6f3c1252950e5ad18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.7 MB (11664757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4aede6b5cc5483a9ae6a734b375cefeb85ce3cb68f052be9ff85a9a73d42833b`

```dockerfile
```

-	Layers:
	-	`sha256:f5d738861101a55eaa07a1e4dfeea02c83ae59b515cf0e674a16c486271cd1b4`  
		Last Modified: Mon, 27 Jul 2026 22:02:04 GMT  
		Size: 11.6 MB (11643720 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:561bdfda3a6e5dbe1bd92cf871a4769fb5573e341eb44a091289ee5e96d9d4c4`  
		Last Modified: Mon, 27 Jul 2026 22:02:03 GMT  
		Size: 21.0 KB (21037 bytes)  
		MIME: application/vnd.in-toto+json
