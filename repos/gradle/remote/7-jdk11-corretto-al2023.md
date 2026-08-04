## `gradle:7-jdk11-corretto-al2023`

```console
$ docker pull gradle@sha256:4ef9f5ed357bde83187e6084ef6d6687f94c7e5090aaacf7fbe094fbafc22140
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:7-jdk11-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:3136e9916c33c190737a2224f85af0624a0b35952375b0189459078a82fdcbb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **423.2 MB (423247587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:133c7e9b5fb73f1737582f9313a8d70f32230186203207b10a4a353280826162`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 04 Aug 2026 00:27:38 GMT
COPY /rootfs/ / # buildkit
# Tue, 04 Aug 2026 00:27:38 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:57:25 GMT
ARG version=11.0.32.9-1
# Tue, 04 Aug 2026 00:57:25 GMT
# ARGS: version=11.0.32.9-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-jmods-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 04 Aug 2026 00:57:25 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:57:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Tue, 04 Aug 2026 01:32:49 GMT
CMD ["gradle"]
# Tue, 04 Aug 2026 01:32:49 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 04 Aug 2026 01:32:49 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         tar                 unzip         wget         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 04 Aug 2026 01:32:49 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 04 Aug 2026 01:32:49 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 04 Aug 2026 01:32:49 GMT
WORKDIR /home/gradle
# Tue, 04 Aug 2026 01:32:49 GMT
ENV GRADLE_VERSION=7.6.6
# Tue, 04 Aug 2026 01:32:49 GMT
ARG GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
# Tue, 04 Aug 2026 01:32:51 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 04 Aug 2026 01:32:51 GMT
USER gradle
# Tue, 04 Aug 2026 01:32:52 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Tue, 04 Aug 2026 01:32:52 GMT
USER root
```

-	Layers:
	-	`sha256:1c635d63e15b914a52c850733b73b200164c1b4f22ce422b48b4130f93dee906`  
		Last Modified: Tue, 28 Jul 2026 03:02:31 GMT  
		Size: 54.6 MB (54572680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e65b4d939eb36e1b241115abf3fd2b8e59a07310c0aea8ee5d768bb7bbd9565d`  
		Last Modified: Tue, 04 Aug 2026 00:57:45 GMT  
		Size: 153.5 MB (153470096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf5940294f52b347cfb817e0d139961631e8f971021c898e0a76e0914e4022a4`  
		Last Modified: Tue, 04 Aug 2026 01:33:19 GMT  
		Size: 86.7 MB (86678804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a2dc565f5794745210264202cbca2884ebe2570673680c74362630095f7fcc7`  
		Last Modified: Tue, 04 Aug 2026 01:33:16 GMT  
		Size: 1.6 KB (1649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:801f412ba4776e5febfdad733d7bc28398a0a6ea1db4e08aa8e9f3063067ef8f`  
		Last Modified: Tue, 04 Aug 2026 01:33:20 GMT  
		Size: 128.5 MB (128469415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dbacec41f31a06c21c3e70a65a132839eb0e6699ca67acb437dab3a463e0142`  
		Last Modified: Tue, 04 Aug 2026 01:33:16 GMT  
		Size: 54.9 KB (54911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:7-jdk11-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:408d1e4a40fb44c1b4fa8b9506131b25e948e494b772727ac873cdfc853090e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.3 MB (11312546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff4b5b22f109cea8fc0775e6eddc4038021e0a4f55476169da83438cfb6999e3`

```dockerfile
```

-	Layers:
	-	`sha256:b1af4009d21cf84037112f30eb312d57637c368ddcb4fc2ee8c3cac9b18fe6d9`  
		Last Modified: Tue, 04 Aug 2026 01:33:16 GMT  
		Size: 11.3 MB (11291675 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d9e96d9a954889bb51a700d146e0b1b1d53cb273089a0d57554c1329141b5915`  
		Last Modified: Tue, 04 Aug 2026 01:33:15 GMT  
		Size: 20.9 KB (20871 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:7-jdk11-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:0a9c1a682d38e450d249472c9fa74d558525c34e4214a47c2edf34df8f0a639c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **420.1 MB (420065226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e73960b1819e0515790c304fbe5ff066bb526e8b92e0071c7e344fcce591d9b5`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 04 Aug 2026 00:27:37 GMT
COPY /rootfs/ / # buildkit
# Tue, 04 Aug 2026 00:27:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:57:10 GMT
ARG version=11.0.32.9-1
# Tue, 04 Aug 2026 00:57:10 GMT
# ARGS: version=11.0.32.9-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-jmods-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 04 Aug 2026 00:57:10 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:57:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Tue, 04 Aug 2026 01:33:10 GMT
CMD ["gradle"]
# Tue, 04 Aug 2026 01:33:10 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 04 Aug 2026 01:33:10 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         tar                 unzip         wget         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 04 Aug 2026 01:33:10 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 04 Aug 2026 01:33:10 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 04 Aug 2026 01:33:10 GMT
WORKDIR /home/gradle
# Tue, 04 Aug 2026 01:33:10 GMT
ENV GRADLE_VERSION=7.6.6
# Tue, 04 Aug 2026 01:33:10 GMT
ARG GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
# Tue, 04 Aug 2026 01:33:12 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 04 Aug 2026 01:33:12 GMT
USER gradle
# Tue, 04 Aug 2026 01:33:13 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Tue, 04 Aug 2026 01:33:13 GMT
USER root
```

-	Layers:
	-	`sha256:0d194348effd1a9f66c459a1b81ed9823b1301b8d182e914b8ddc71c54c528e5`  
		Last Modified: Tue, 28 Jul 2026 08:44:17 GMT  
		Size: 53.4 MB (53448657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d27a3d81687d5a8e482e74098568a47768bea8f87d5d4f7b4bdd67670d0f7e84`  
		Last Modified: Tue, 04 Aug 2026 00:57:32 GMT  
		Size: 152.0 MB (152043082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46bbc88f0b63b04e3d83a45c266f00375abd234cdb308f0a8ccc42d0d182d39f`  
		Last Modified: Tue, 04 Aug 2026 01:33:43 GMT  
		Size: 86.0 MB (86042859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cac56401a40cdaf625bef842ef61968f4208988d87e04620f03cf1e012bccf01`  
		Last Modified: Tue, 04 Aug 2026 01:33:40 GMT  
		Size: 1.6 KB (1647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c518ca3257111b105ba39b20e0964dd7762fd1cf2f514d666e03b6026335702d`  
		Last Modified: Tue, 04 Aug 2026 01:33:44 GMT  
		Size: 128.5 MB (128469417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dade6ed8fbde6138d8878aeb20c5f8cf1ad84371ddd849e5b400bfff05cf200f`  
		Last Modified: Tue, 04 Aug 2026 01:33:40 GMT  
		Size: 59.5 KB (59532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:7-jdk11-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:728d74c0b625a8afd6b6d40ea103732b4d709d36bed8e3472d2e04cc50aa8ada
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.3 MB (11312534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f3df111103b8c77888ab5f8bcfd48480ef2be04042e96b311a198fa77d65215`

```dockerfile
```

-	Layers:
	-	`sha256:ab2b7528740964f993ab6ede8c666762075a6f1c18a121566f185034a999ce8c`  
		Last Modified: Tue, 04 Aug 2026 01:33:41 GMT  
		Size: 11.3 MB (11291490 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81474d1c231ae3ba6056f5d3b494dc89d4c14a71882fb5a47eb89ba7f8b948ce`  
		Last Modified: Tue, 04 Aug 2026 01:33:40 GMT  
		Size: 21.0 KB (21044 bytes)  
		MIME: application/vnd.in-toto+json
