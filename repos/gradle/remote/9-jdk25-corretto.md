## `gradle:9-jdk25-corretto`

```console
$ docker pull gradle@sha256:013165c5b36331fc2da525ae4acbbf13aa7bc3cbc21dd63acf146734792d85d1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:9-jdk25-corretto` - linux; amd64

```console
$ docker pull gradle@sha256:1a9e6aefa05d8d90226cef0addd37b1d299454eca341fc1a39176424710ae730
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **475.1 MB (475084120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f15a548d69259b4b6f4725c34b456770a86a3eb52c5d65351686afb8f779c19e`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 16 Nov 2026 22:28:06 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:28:06 GMT
CMD ["/bin/bash"]
# Tue, 17 Nov 2026 21:34:51 GMT
ARG version=25.0.5.1.2-1
# Tue, 17 Nov 2026 21:34:51 GMT
ARG resource_version=25.0.5.1.2
# Tue, 17 Nov 2026 21:34:51 GMT
ARG package_version=1
# Tue, 17 Nov 2026 21:34:51 GMT
# ARGS: version=25.0.5.1.2-1 resource_version=25.0.5.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 17 Nov 2026 21:34:51 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:34:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Tue, 17 Nov 2026 22:09:26 GMT
CMD ["gradle"]
# Tue, 17 Nov 2026 22:09:26 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 17 Nov 2026 22:09:26 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 17 Nov 2026 22:09:26 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 17 Nov 2026 22:09:26 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 17 Nov 2026 22:09:27 GMT
WORKDIR /home/gradle
# Tue, 17 Nov 2026 22:09:27 GMT
ENV GRADLE_VERSION=9.9.1
# Tue, 17 Nov 2026 22:09:27 GMT
ARG GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
# Tue, 17 Nov 2026 22:09:29 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 17 Nov 2026 22:09:29 GMT
USER gradle
# Tue, 17 Nov 2026 22:09:30 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 17 Nov 2026 22:09:30 GMT
USER root
```

-	Layers:
	-	`sha256:b14c48cb507df242c2b2a0cb744a00c9498a8511d265f31337cb732917717949`  
		Last Modified: Thu, 12 Nov 2026 22:05:23 GMT  
		Size: 54.6 MB (54569293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06d660831c36d9b04c25c338353b69ba69895ce28e7c8fe96890ff8ddb18a3d1`  
		Last Modified: Tue, 17 Nov 2026 21:35:14 GMT  
		Size: 189.7 MB (189652610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3360d886a56a15fb196776fbcce333dc139b8b384394ffc740e784de268ceb09`  
		Last Modified: Tue, 17 Nov 2026 22:10:04 GMT  
		Size: 96.0 MB (96014021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ab0e25f33486ca417642de0b3cfc54fcd10f0bdae535ac72d75c762ab48b7c9`  
		Last Modified: Tue, 17 Nov 2026 22:10:00 GMT  
		Size: 1.6 KB (1646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b8faa5434f4f9a6cbfeaa402bcb8cae82151f972367e2c4c6f8918c5a9b5e49`  
		Last Modified: Tue, 17 Nov 2026 22:10:04 GMT  
		Size: 134.8 MB (134820900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b94232553113acb2188bf3b2598f46e5fb93bada9df7548e5d8d76fec1f6d404`  
		Last Modified: Tue, 17 Nov 2026 22:10:00 GMT  
		Size: 25.6 KB (25618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk25-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:b6e6e6c8d2f27c27518b639f432ea7056a6f06bc751ff3937eb343cc76bfeda9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12705877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:186fcf82e000a951aa3ef973406bad13f5436431f20892febe830458f33e3a53`

```dockerfile
```

-	Layers:
	-	`sha256:80c8ecad21cac1eb01ec471bcaf0bfa7c2d3a73ba6461fb11bf9e696df42d11c`  
		Last Modified: Tue, 17 Nov 2026 22:10:01 GMT  
		Size: 12.7 MB (12683608 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6a3f84d55a4f6fd2b1711554d9817a9d392de5941b6366daaa450bc75ad2a2d2`  
		Last Modified: Tue, 17 Nov 2026 22:10:00 GMT  
		Size: 22.3 KB (22269 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk25-corretto` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:36ed30e573a385647690e742449a68539479fc8a483800953e4907aca1f0c7f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **471.3 MB (471257862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a020edbe827577e8cba46b98e66349c78ae9f3b3f4d7e949fea43c50058ec696`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 16 Nov 2026 22:29:21 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:29:21 GMT
CMD ["/bin/bash"]
# Tue, 17 Nov 2026 21:34:57 GMT
ARG version=25.0.5.1.2-1
# Tue, 17 Nov 2026 21:34:57 GMT
ARG resource_version=25.0.5.1.2
# Tue, 17 Nov 2026 21:34:57 GMT
ARG package_version=1
# Tue, 17 Nov 2026 21:34:57 GMT
# ARGS: version=25.0.5.1.2-1 resource_version=25.0.5.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 17 Nov 2026 21:34:57 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:34:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Tue, 17 Nov 2026 22:09:23 GMT
CMD ["gradle"]
# Tue, 17 Nov 2026 22:09:23 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 17 Nov 2026 22:09:23 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 17 Nov 2026 22:09:23 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 17 Nov 2026 22:09:23 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 17 Nov 2026 22:09:23 GMT
WORKDIR /home/gradle
# Tue, 17 Nov 2026 22:09:23 GMT
ENV GRADLE_VERSION=9.9.1
# Tue, 17 Nov 2026 22:09:23 GMT
ARG GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
# Tue, 17 Nov 2026 22:09:26 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 17 Nov 2026 22:09:26 GMT
USER gradle
# Tue, 17 Nov 2026 22:09:26 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 17 Nov 2026 22:09:26 GMT
USER root
```

-	Layers:
	-	`sha256:ec15fd39d3176482c0c3086a0be29d9028611fd79d15bccd7da39e67bbfceeab`  
		Last Modified: Thu, 12 Nov 2026 22:05:26 GMT  
		Size: 53.5 MB (53453077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a12ca9bdf610fdaa9db8bf1928514118b73146715b46118d3d6a4c02e66fdcf7`  
		Last Modified: Tue, 17 Nov 2026 21:35:22 GMT  
		Size: 187.5 MB (187540128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab21188fd2f12d3c695efc683ec989b66cba04ee984527d7829db5be0b8547db`  
		Last Modified: Tue, 17 Nov 2026 22:10:01 GMT  
		Size: 95.4 MB (95412746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fa08e3f5edd5bc51a4b9fb4eef8bc50f2614f3eb886ddb3b63bd5ca83d211cb`  
		Last Modified: Tue, 17 Nov 2026 22:09:57 GMT  
		Size: 1.6 KB (1646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cb402ec1fa975d8057343e6c4cc7aec6dcc1f29840842c1473d5fce7ae04aab`  
		Last Modified: Tue, 17 Nov 2026 22:10:01 GMT  
		Size: 134.8 MB (134820900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b15d41fc325aa1c8214545cf117af2f9ba83a42a397905dc11b2c3724aafe73`  
		Last Modified: Tue, 17 Nov 2026 22:09:57 GMT  
		Size: 29.3 KB (29333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk25-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:d1cb0534f1e92731e47c303eddd07850a3d205ac4f74600c77d97f9ae3d64828
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12705135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fc083946a27f67461f9af503fff1f0eeea61b8cd645f28d5c66a76346cecab8`

```dockerfile
```

-	Layers:
	-	`sha256:8421db033b409472ee715d23786a720c44c6ba1a1f7c4b31f1f5cb4196003a11`  
		Last Modified: Tue, 17 Nov 2026 22:09:57 GMT  
		Size: 12.7 MB (12682646 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c36899b5b56988152e6fd24989358b44caab7feb15fcd0e79736106d6a90015`  
		Last Modified: Tue, 17 Nov 2026 22:09:57 GMT  
		Size: 22.5 KB (22489 bytes)  
		MIME: application/vnd.in-toto+json
