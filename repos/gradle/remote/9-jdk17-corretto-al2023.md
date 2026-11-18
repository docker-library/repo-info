## `gradle:9-jdk17-corretto-al2023`

```console
$ docker pull gradle@sha256:bb01f1fca98922abbf7017e25e359ad9ecd9709d4f97b73c40b12a4dbee8c798
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:9-jdk17-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:f478ae19581c786dfd265bae52229834010e36ee02dfdfb40272e52d1cfc00ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **442.8 MB (442844779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf9f7ad2d6ccf1d716effa64d906e01f9e9956610bf9897db6f5878712de5842`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 18 Nov 2026 21:16:24 GMT
COPY /rootfs/ / # buildkit
# Wed, 18 Nov 2026 21:16:24 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 21:33:53 GMT
ARG version=17.0.21.1.2-1
# Wed, 18 Nov 2026 21:33:53 GMT
ARG resource_version=17.0.21.1.2
# Wed, 18 Nov 2026 21:33:53 GMT
ARG package_version=1
# Wed, 18 Nov 2026 21:33:53 GMT
# ARGS: version=17.0.21.1.2-1 resource_version=17.0.21.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 18 Nov 2026 21:33:53 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 21:33:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Wed, 18 Nov 2026 21:55:33 GMT
CMD ["gradle"]
# Wed, 18 Nov 2026 21:55:33 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 18 Nov 2026 21:55:33 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 18 Nov 2026 21:55:34 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 18 Nov 2026 21:55:34 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 18 Nov 2026 21:55:34 GMT
WORKDIR /home/gradle
# Wed, 18 Nov 2026 21:55:34 GMT
ENV GRADLE_VERSION=9.9.1
# Wed, 18 Nov 2026 21:55:34 GMT
ARG GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
# Wed, 18 Nov 2026 21:55:36 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 18 Nov 2026 21:55:36 GMT
USER gradle
# Wed, 18 Nov 2026 21:55:37 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 18 Nov 2026 21:55:37 GMT
USER root
```

-	Layers:
	-	`sha256:48c7a3aa33f84b2fa7af701f558c0a97251fe0ca6790119c6f912decc8cad76d`  
		Last Modified: Tue, 17 Nov 2026 23:01:37 GMT  
		Size: 54.6 MB (54569091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:643bff153a96c415a2ca214b0ee4f9f1e839eeb676ed5fa2ea4660a77aec946a`  
		Last Modified: Wed, 18 Nov 2026 21:34:12 GMT  
		Size: 157.4 MB (157432817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d3add0437404742b7b95d0dc004afced89895dec49d286bce892c6aacae1c76`  
		Last Modified: Wed, 18 Nov 2026 21:56:12 GMT  
		Size: 96.0 MB (95994688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c75a5be16da3b09020087b3d53ade0b44ddfe5ae39821a930cffed9702f8482`  
		Last Modified: Wed, 18 Nov 2026 21:56:07 GMT  
		Size: 1.6 KB (1645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c85e3e592636787f8ff8f3fa6cbef31384b49aad622d49306838f439e8e1041`  
		Last Modified: Wed, 18 Nov 2026 21:56:12 GMT  
		Size: 134.8 MB (134820899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb053a931daa0a7fdf3c09d2e348a60b93db986a17f1a24ae4280c27ef8712b0`  
		Last Modified: Wed, 18 Nov 2026 21:56:07 GMT  
		Size: 25.6 KB (25607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk17-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:439750494df47aa3aee5246e103876dc42600c945ccb7347f714816f6a3552bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12690500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0ae38e8ccdc191ee8c0cd5b721d668cb237b344b769b0e8408685776442a91c`

```dockerfile
```

-	Layers:
	-	`sha256:bdb182e2af37170204187121aeb0b14578e5b1bbbd9b12a120cbbe00ace9a625`  
		Last Modified: Wed, 18 Nov 2026 21:56:08 GMT  
		Size: 12.7 MB (12669003 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:74606ca597180ae45cb8d34b2da780bc1063b7ff29e9c34caa353e6e794f99d3`  
		Last Modified: Wed, 18 Nov 2026 21:56:07 GMT  
		Size: 21.5 KB (21497 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk17-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:47897c725104836805365527912fdd3ab372bb14b9db4239f59ccffa734b2202
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **440.0 MB (439999848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93af1ce8041cf44b80176358c8d401ce3e1536e4a35968a1c29b797940661f66`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 18 Nov 2026 21:16:23 GMT
COPY /rootfs/ / # buildkit
# Wed, 18 Nov 2026 21:16:23 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 21:34:29 GMT
ARG version=17.0.21.1.2-1
# Wed, 18 Nov 2026 21:34:29 GMT
ARG resource_version=17.0.21.1.2
# Wed, 18 Nov 2026 21:34:29 GMT
ARG package_version=1
# Wed, 18 Nov 2026 21:34:29 GMT
# ARGS: version=17.0.21.1.2-1 resource_version=17.0.21.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 18 Nov 2026 21:34:29 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 21:34:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Wed, 18 Nov 2026 21:53:15 GMT
CMD ["gradle"]
# Wed, 18 Nov 2026 21:53:15 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 18 Nov 2026 21:53:15 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 18 Nov 2026 21:53:15 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 18 Nov 2026 21:53:15 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 18 Nov 2026 21:53:15 GMT
WORKDIR /home/gradle
# Wed, 18 Nov 2026 21:53:15 GMT
ENV GRADLE_VERSION=9.9.1
# Wed, 18 Nov 2026 21:53:15 GMT
ARG GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
# Wed, 18 Nov 2026 21:53:18 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 18 Nov 2026 21:53:18 GMT
USER gradle
# Wed, 18 Nov 2026 21:53:18 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 18 Nov 2026 21:53:18 GMT
USER root
```

-	Layers:
	-	`sha256:7dd5afb185e9abad9919aa0d5eaa430bb9babdb805532cdb871320227597f486`  
		Last Modified: Wed, 18 Nov 2026 01:44:00 GMT  
		Size: 53.5 MB (53453550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f189da55103d7d58efc6eea0846301dc8a0741ca73bd452554e6d17cf0e7ca3`  
		Last Modified: Wed, 18 Nov 2026 21:34:52 GMT  
		Size: 156.3 MB (156296732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b2da19d70fe5cc43346690eef95c3d8d0771e4787fb257fe2047a16f08181b3`  
		Last Modified: Wed, 18 Nov 2026 21:53:52 GMT  
		Size: 95.4 MB (95397663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5185a26eb5a95753d1593cebb5ef80842e52def0641dfe537453c3f16216b71d`  
		Last Modified: Wed, 18 Nov 2026 21:53:48 GMT  
		Size: 1.6 KB (1642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70c41a1e52ae45cd414f82f683981dfe48c97be1f900fa0bd8f6432d078875fb`  
		Last Modified: Wed, 18 Nov 2026 21:53:53 GMT  
		Size: 134.8 MB (134820900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f7bcf6ab2bd07219552b6cd998f6bcd3d6a6dd07bf35190126408bc4ea2a0e2`  
		Last Modified: Wed, 18 Nov 2026 21:53:49 GMT  
		Size: 29.3 KB (29329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk17-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:9e5ebc3c90be0a29d08d12828f500f31db441ea78aad455667be67727c6ca00c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12689697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b722c5bc0099c56ae16c2a46754d81d56d212da82bb58c04ebb9a5d615d18e6`

```dockerfile
```

-	Layers:
	-	`sha256:19bac2b9bfe8828ca738a4b555c2d56783eac4084b58a3da9a12e04ed3095d3c`  
		Last Modified: Wed, 18 Nov 2026 21:53:49 GMT  
		Size: 12.7 MB (12668003 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:51c2f8b6862d5255de8014d877fb9fbb738a4119c92861520bfc99821a30d93e`  
		Last Modified: Wed, 18 Nov 2026 21:53:48 GMT  
		Size: 21.7 KB (21694 bytes)  
		MIME: application/vnd.in-toto+json
