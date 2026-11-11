## `gradle:9-jdk25-corretto-al2023`

```console
$ docker pull gradle@sha256:4aa893f557bca6ee7d1e1ac8c7967b520df575f1b724cddb100d3f068bff9199
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:9-jdk25-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:1535c8cf9c0a3a10b627c724068dec423bda91ef22b711d2a49625066da5f3b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **475.0 MB (474958386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bf3ea79d793e7710d00b8aeefb6f730830b814402fe9f0bb62acf0ba9ee115e`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 05 Nov 2026 18:52:15 GMT
COPY /rootfs/ / # buildkit
# Thu, 05 Nov 2026 18:52:15 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 20:00:04 GMT
ARG version=25.0.5.0.10-1
# Thu, 05 Nov 2026 20:00:04 GMT
ARG resource_version=25.0.5.0.10
# Thu, 05 Nov 2026 20:00:04 GMT
ARG package_version=1
# Thu, 05 Nov 2026 20:00:04 GMT
# ARGS: version=25.0.5.0.10-1 resource_version=25.0.5.0.10 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 05 Nov 2026 20:00:04 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 20:00:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Wed, 11 Nov 2026 20:10:02 GMT
CMD ["gradle"]
# Wed, 11 Nov 2026 20:10:02 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 11 Nov 2026 20:10:02 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 11 Nov 2026 20:10:02 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 11 Nov 2026 20:10:02 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 11 Nov 2026 20:10:02 GMT
WORKDIR /home/gradle
# Wed, 11 Nov 2026 20:10:02 GMT
ENV GRADLE_VERSION=9.9.1
# Wed, 11 Nov 2026 20:10:02 GMT
ARG GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
# Wed, 11 Nov 2026 20:10:12 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 11 Nov 2026 20:10:12 GMT
USER gradle
# Wed, 11 Nov 2026 20:10:13 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 11 Nov 2026 20:10:13 GMT
USER root
```

-	Layers:
	-	`sha256:36d0e51e1ea56325505d833f7d87567b6720c396e9a5742de0f157b063545163`  
		Last Modified: Sat, 31 Oct 2026 02:35:05 GMT  
		Size: 54.6 MB (54569615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a9334640a845dbaaf881b7f899922e1bba1bd1bc75d150d0b3e9ba0548aa0ec`  
		Last Modified: Thu, 05 Nov 2026 20:00:28 GMT  
		Size: 189.6 MB (189627364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e48e0348a41622b8313cccbc1ff157f1bbb2e1b3cabff25351bda7a5cadc7f39`  
		Last Modified: Wed, 11 Nov 2026 20:10:45 GMT  
		Size: 95.9 MB (95913204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c57f8177c27e37cbba4e5dca4edc4d316a9368773d217b3e6ef637411c0d7549`  
		Last Modified: Wed, 11 Nov 2026 20:10:39 GMT  
		Size: 1.6 KB (1645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e4fdff1f3017fba8d5b4f1e4fbd19bfbd576810f4fab2ffa2cd47bbdccf6a8a`  
		Last Modified: Wed, 11 Nov 2026 20:10:46 GMT  
		Size: 134.8 MB (134820908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a401134b58760bd0e6e69ac25822110302bce62ff4427a06869e8fcf77916fbb`  
		Last Modified: Wed, 11 Nov 2026 20:10:40 GMT  
		Size: 25.6 KB (25618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk25-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:7b34d5a4a59d0c4daf2309883f2d1e093c46af81bedb1d623e2a7d965ef55b21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12701078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a92d0cb541eceb0a9fc0aefc5cc18dcd3ca316dd96b8bda9fb4566ecd676b36`

```dockerfile
```

-	Layers:
	-	`sha256:66fcab9fe09dca030803fcf620803c7e636eab72c18bf5b74e89d343f5350cf6`  
		Last Modified: Wed, 11 Nov 2026 20:10:40 GMT  
		Size: 12.7 MB (12678809 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:39f9ae1bc558badf2ffd393336171467f5ee2afa58c6b32b98d82f9577e6fc56`  
		Last Modified: Wed, 11 Nov 2026 20:10:39 GMT  
		Size: 22.3 KB (22269 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk25-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:6052c877a634c2c25538896f911fd1b4407e760d0ba2524999163b534ff7a99d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **471.1 MB (471140776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f96d1215aa20b042ff04f29988375892dba9821d1ec4f65f1cbfc10121a48f8b`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 05 Nov 2026 18:48:16 GMT
COPY /rootfs/ / # buildkit
# Thu, 05 Nov 2026 18:48:16 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 20:16:45 GMT
ARG version=25.0.5.0.10-1
# Thu, 05 Nov 2026 20:16:45 GMT
ARG resource_version=25.0.5.0.10
# Thu, 05 Nov 2026 20:16:45 GMT
ARG package_version=1
# Thu, 05 Nov 2026 20:16:45 GMT
# ARGS: version=25.0.5.0.10-1 resource_version=25.0.5.0.10 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 05 Nov 2026 20:16:45 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 20:16:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Wed, 11 Nov 2026 19:51:02 GMT
CMD ["gradle"]
# Wed, 11 Nov 2026 19:51:02 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 11 Nov 2026 19:51:02 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 11 Nov 2026 19:51:02 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 11 Nov 2026 19:51:02 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 11 Nov 2026 19:51:02 GMT
WORKDIR /home/gradle
# Wed, 11 Nov 2026 19:51:02 GMT
ENV GRADLE_VERSION=9.9.1
# Wed, 11 Nov 2026 19:51:02 GMT
ARG GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
# Wed, 11 Nov 2026 19:51:05 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 11 Nov 2026 19:51:05 GMT
USER gradle
# Wed, 11 Nov 2026 19:51:06 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 11 Nov 2026 19:51:06 GMT
USER root
```

-	Layers:
	-	`sha256:c1eee8f81fa5e953bb6eab0ff6f612967f0ef8b1dc9fac3cb2319b1021f7a245`  
		Last Modified: Sat, 31 Oct 2026 02:35:03 GMT  
		Size: 53.5 MB (53456123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12298a717fb0eb4a25b2f9a0a3e09bcfee4a6a58768458e397d2f0c023bb6dab`  
		Last Modified: Thu, 05 Nov 2026 20:17:10 GMT  
		Size: 187.5 MB (187523627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df3ce81b34417acc2ec3f4330438b9e31fbc77436f6e0c5ce510664924b2ceba`  
		Last Modified: Wed, 11 Nov 2026 19:51:41 GMT  
		Size: 95.3 MB (95309111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4980fcf743ef548c6a1d103cf551126856c450fb5d54fd3cbb13156c39470a2`  
		Last Modified: Wed, 11 Nov 2026 19:51:37 GMT  
		Size: 1.6 KB (1644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90b3cab482fd62d43f877b5869a8dec9246ea266181d150b53f3c05301bed0b4`  
		Last Modified: Wed, 11 Nov 2026 19:51:42 GMT  
		Size: 134.8 MB (134820898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12ad2b1e8930a6b8c2521439dcd7acaf6f6d528a521f89defc9418b78b871d8a`  
		Last Modified: Wed, 11 Nov 2026 19:51:37 GMT  
		Size: 29.3 KB (29341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk25-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:59aab7549c56b138d04b041b1b2df6df8c123ebec3de775c45627dbe23358894
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12700337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:238578e074a76bf3501cf53d0f4992e7603b80626240bddbfb2adea38cf4b3e4`

```dockerfile
```

-	Layers:
	-	`sha256:4e1d1460c4c3397230507247e53c64faea65ea02e564ea3221fd7cc070c5855e`  
		Last Modified: Wed, 11 Nov 2026 19:51:38 GMT  
		Size: 12.7 MB (12677847 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f9c2d42bcff2606fd7abaedb69345b51882401322070cb0974be3c3edd3b4e90`  
		Last Modified: Wed, 11 Nov 2026 19:51:37 GMT  
		Size: 22.5 KB (22490 bytes)  
		MIME: application/vnd.in-toto+json
