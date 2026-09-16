## `gradle:7-jdk-graal-noble`

```console
$ docker pull gradle@sha256:699a235d9fae172f5a075f73be40de4d95691bfcbd212576c236409bf6084b3a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:7-jdk-graal-noble` - linux; amd64

```console
$ docker pull gradle@sha256:9cfa5852cdac2c827f957910c2e2cae55ee79abae191e171532965d626718f8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **597.6 MB (597576403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af7ad70c0c5be3df9182c21069be2b93a8b57bd5452bdd16460a7cb847633172`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:18:44 GMT
CMD ["gradle"]
# Wed, 16 Sep 2026 03:18:44 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 16 Sep 2026 03:18:44 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 16 Sep 2026 03:18:44 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 16 Sep 2026 03:18:44 GMT
WORKDIR /home/gradle
# Wed, 16 Sep 2026 03:21:01 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make                 binutils         ca-certificates         curl         fontconfig         locales         p11-kit         tzdata         unzip         wget                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 16 Sep 2026 03:21:01 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Wed, 16 Sep 2026 03:21:01 GMT
ENV JAVA_VERSION=17.0.9
# Wed, 16 Sep 2026 03:21:10 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=e47ba7229cef02393e19d5b8f46f7f1cab4829dd17bfe84d5431fc8ff0e22a96     && GRAALVM_AARCH64_DOWNLOAD_SHA256=c3281b21f5220c2f76cf6fa0d646bc42e2d729af2c022bb06e557a613ba16102     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/jdk-${JAVA_VERSION}/graalvm-community-jdk-${JAVA_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && gu --version     && native-image --version # buildkit
# Wed, 16 Sep 2026 03:21:10 GMT
ENV GRADLE_VERSION=7.6.6
# Wed, 16 Sep 2026 03:21:10 GMT
ARG GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
# Wed, 16 Sep 2026 03:21:13 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 16 Sep 2026 03:21:13 GMT
USER gradle
# Wed, 16 Sep 2026 03:21:13 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Wed, 16 Sep 2026 03:21:13 GMT
USER root
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6552db1b1aab34d5ca688223c3d64ec0d47502bddc05159a34695b91a0a4ecec`  
		Last Modified: Wed, 16 Sep 2026 03:20:06 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddf4216ba5d5dd05d655376665cf92c1e6fd7f97c3969eecd3baa0dedaf2f564`  
		Last Modified: Wed, 16 Sep 2026 03:21:52 GMT  
		Size: 148.2 MB (148222557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61b646dffe020793084ebceb5f02ebed331d12b243d884b1a998f79ec8c18db5`  
		Last Modified: Wed, 16 Sep 2026 03:21:55 GMT  
		Size: 291.1 MB (291064066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f476b95efe797ff6483fa9e74838d3ca57f54c941b4a2d9bd3d2ec062e4b4bb`  
		Last Modified: Wed, 16 Sep 2026 03:21:52 GMT  
		Size: 128.5 MB (128469444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48e39b83fe9b3ce2273104d20a7bc41f4a757831f5aab61356ddb7f02ca5c544`  
		Last Modified: Wed, 16 Sep 2026 03:21:45 GMT  
		Size: 54.9 KB (54901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:7-jdk-graal-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:ddcbd3164d3ba7684a136658971c2107938db59ce798d6bddb7f6fa892aa317b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.9 MB (8939280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:957325acab63b8e74090256961607af6c696f9dcc5d23be55ca9c454bea4d1a7`

```dockerfile
```

-	Layers:
	-	`sha256:e70c9dc03f855a3d4a17fd0959df77ee41a78e89b08a4af4563ea29bc5dc9aeb`  
		Last Modified: Wed, 16 Sep 2026 03:21:45 GMT  
		Size: 8.9 MB (8907211 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d8bca2ab7038cd28437363a57d6d58eac1b4ed1150a31ebe19e558f106b508c4`  
		Last Modified: Wed, 16 Sep 2026 03:21:45 GMT  
		Size: 32.1 KB (32069 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:7-jdk-graal-noble` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:ae9b5b0d44459a68b4321ef33d838624b07cf0831542f782fbac94446e8e0ec4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **584.3 MB (584307791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d031a7b35f0f8a237910668d899c45a8b453f428e916f4e80082a12ed512dd89`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:18:24 GMT
CMD ["gradle"]
# Wed, 16 Sep 2026 03:18:24 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 16 Sep 2026 03:18:24 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 16 Sep 2026 03:18:24 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 16 Sep 2026 03:18:24 GMT
WORKDIR /home/gradle
# Wed, 16 Sep 2026 03:20:34 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make                 binutils         ca-certificates         curl         fontconfig         locales         p11-kit         tzdata         unzip         wget                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 16 Sep 2026 03:20:34 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Wed, 16 Sep 2026 03:20:34 GMT
ENV JAVA_VERSION=17.0.9
# Wed, 16 Sep 2026 03:20:44 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=e47ba7229cef02393e19d5b8f46f7f1cab4829dd17bfe84d5431fc8ff0e22a96     && GRAALVM_AARCH64_DOWNLOAD_SHA256=c3281b21f5220c2f76cf6fa0d646bc42e2d729af2c022bb06e557a613ba16102     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/jdk-${JAVA_VERSION}/graalvm-community-jdk-${JAVA_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && gu --version     && native-image --version # buildkit
# Wed, 16 Sep 2026 03:20:44 GMT
ENV GRADLE_VERSION=7.6.6
# Wed, 16 Sep 2026 03:20:44 GMT
ARG GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
# Wed, 16 Sep 2026 03:20:46 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 16 Sep 2026 03:20:46 GMT
USER gradle
# Wed, 16 Sep 2026 03:20:46 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Wed, 16 Sep 2026 03:20:46 GMT
USER root
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f811ae931d1f581c640e735ccf78061905f4f4950cafe2781ef66120306cb32a`  
		Last Modified: Wed, 16 Sep 2026 03:19:46 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:baa0ee01b5717258da329b0fac5a747156d8a6dd2fc6549cd9298a0fc88a2646`  
		Last Modified: Wed, 16 Sep 2026 03:21:26 GMT  
		Size: 143.3 MB (143334100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8c3ca82e06e3b9ce17c55037358341b9e4cb91ac9e84ed437b3e09115ddc96a`  
		Last Modified: Wed, 16 Sep 2026 03:21:29 GMT  
		Size: 283.5 MB (283501867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7c9be2417cf17cc4577cccb82bba5bfeda3e026a9eef7e977c75d26bef0d403`  
		Last Modified: Wed, 16 Sep 2026 03:21:26 GMT  
		Size: 128.5 MB (128469414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7134ec4dbb9d2a2feefaff5f8d5edf9a09a4e7575ced8cf1253e8dac6789a1a3`  
		Last Modified: Wed, 16 Sep 2026 03:21:18 GMT  
		Size: 59.5 KB (59513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:7-jdk-graal-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:60b6706296dc06fe634c0e65ab202972c8dee86d1a5986781da13782e219b7ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.9 MB (8935313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7783ec9aef3f36f3a0bc0094a6793707523380e5cb378ad553d1a28f968e447`

```dockerfile
```

-	Layers:
	-	`sha256:d080d4927780708a4b263ba404cb8b26f7f1ba38d1d4e39fe1e1c0db210d5d3c`  
		Last Modified: Wed, 16 Sep 2026 03:21:19 GMT  
		Size: 8.9 MB (8902912 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:92a0bbf98be0aa5c457cf1f86b69d1089fcf0e8127745116fdae36217307ef0d`  
		Last Modified: Wed, 16 Sep 2026 03:21:18 GMT  
		Size: 32.4 KB (32401 bytes)  
		MIME: application/vnd.in-toto+json
