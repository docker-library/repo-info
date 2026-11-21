## `gradle:graal-jammy`

```console
$ docker pull gradle@sha256:ace9d740d7cf5824fce4f24b5552ff88f110075abd9e5aa608776e5e0b011313
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:graal-jammy` - linux; amd64

```console
$ docker pull gradle@sha256:fde3adfaf9e8445fd66c27744e35e5d87cbdb9d3f1fda92601412230144047cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **609.6 MB (609586678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9a0bb5d5797792fd9b0140aacda98c786dceee84a2493a69fbb5e6bf20451c6`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 19:59:20 GMT
CMD ["gradle"]
# Fri, 20 Nov 2026 19:59:20 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 20 Nov 2026 19:59:20 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 20 Nov 2026 19:59:20 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 20 Nov 2026 19:59:20 GMT
WORKDIR /home/gradle
# Fri, 20 Nov 2026 19:59:44 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 20 Nov 2026 19:59:44 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Fri, 20 Nov 2026 19:59:44 GMT
ENV JAVA_VERSION=21.0.13.0.3+6
# Fri, 20 Nov 2026 19:59:56 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading Liberica NIK"     && LIBERICA_NIK_AMD64_DOWNLOAD_SHA256=94e0256d16a97268a548cd427a803f9c5b2ef2134c2f8521826532153ba70df0     && LIBERICA_NIK_AARCH64_DOWNLOAD_SHA256=00cc8ae405e44ee63de0827c7a4d49fd865db324cb75554fa291c459b4621af1     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then LIBERICA_NIK_ARCHITECTURE=amd64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then LIBERICA_NIK_ARCHITECTURE=aarch64; fi     && LIBERICA_NIK_RELEASE_TAG=23.1.13+1-21.0.13.0.3+6     && LIBERICA_NIK_VERSION=23.1.13+1     && LIBERICA_NIK_PKG=https://github.com/bell-sw/LibericaNIK/releases/download/${LIBERICA_NIK_RELEASE_TAG}/bellsoft-liberica-vm-openjdk${JAVA_VERSION}-${LIBERICA_NIK_VERSION}-linux-${LIBERICA_NIK_ARCHITECTURE}.tar.gz     && wget --no-verbose --output-document=liberica-nik.tar.gz "${LIBERICA_NIK_PKG}"         && echo "Checking Liberica NIK download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then LIBERICA_NIK_DOWNLOAD_SHA256="${LIBERICA_NIK_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then LIBERICA_NIK_DOWNLOAD_SHA256="${LIBERICA_NIK_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${LIBERICA_NIK_DOWNLOAD_SHA256} *liberica-nik.tar.gz" | sha256sum --check -         && echo "Installing Liberica NIK"     && mkdir "${JAVA_HOME}"     && tar --extract --gunzip --file liberica-nik.tar.gz --strip-components=1 --directory "${JAVA_HOME}"     && rm liberica-nik.tar.gz     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing Liberica NIK installation"     && java --version     && javac --version     && native-image --version # buildkit
# Fri, 20 Nov 2026 19:59:56 GMT
ENV GRADLE_VERSION=9.9.2
# Fri, 20 Nov 2026 19:59:56 GMT
ARG GRADLE_DOWNLOAD_SHA256=971fcd7150ca4ba04852c0b2ca0d2d0ab9468e14b03473eab19528809914c76b
# Fri, 20 Nov 2026 19:59:59 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=971fcd7150ca4ba04852c0b2ca0d2d0ab9468e14b03473eab19528809914c76b
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 20 Nov 2026 19:59:59 GMT
USER gradle
# Fri, 20 Nov 2026 19:59:59 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=971fcd7150ca4ba04852c0b2ca0d2d0ab9468e14b03473eab19528809914c76b
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 20 Nov 2026 19:59:59 GMT
USER root
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd5f6e67b81d42235258616c0c4ceaafbe4be32bfc40999ae3e5328902574e1e`  
		Last Modified: Fri, 20 Nov 2026 20:00:33 GMT  
		Size: 4.3 KB (4308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6648d9b9de7d6d5b42c4ac2bd1299602ac8d31c5db8bdfde7f8ca563ec2dcc5`  
		Last Modified: Fri, 20 Nov 2026 20:00:39 GMT  
		Size: 126.8 MB (126844127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc9a07ad9c1612b589d700a1db880dd5e46927ab73c3d105e573cf4daaac0925`  
		Last Modified: Fri, 20 Nov 2026 20:00:42 GMT  
		Size: 317.8 MB (317772038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfe049b74536234d597f04edeebcbe191948f0ff2a52a9dac2bf40a91ce6b273`  
		Last Modified: Fri, 20 Nov 2026 20:00:39 GMT  
		Size: 134.9 MB (134870749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb31955eb638140ccb9caf309ab0fb9d46eda456273e8042e957a6d3d2ddc481`  
		Last Modified: Fri, 20 Nov 2026 20:00:36 GMT  
		Size: 25.6 KB (25609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:graal-jammy` - unknown; unknown

```console
$ docker pull gradle@sha256:85eabc09d8cb75ad3f30b0a8e0c50ff1185d205bcf21b74f006bb858823b5e09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 MB (9478899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce4c00f6f154a9ba0421e65119f28cf366d908085c0c4e2270a6d264e39beb5f`

```dockerfile
```

-	Layers:
	-	`sha256:ec23a433782e14604c807436c1ae2c0305ca4e79f4b415ea482d16663acabc74`  
		Last Modified: Fri, 20 Nov 2026 20:00:33 GMT  
		Size: 9.4 MB (9448152 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:246f99710eda240bf266a3cf83bf8f2ea3f98f5da5a9831748d7d8b8c31c5c88`  
		Last Modified: Fri, 20 Nov 2026 20:00:32 GMT  
		Size: 30.7 KB (30747 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:graal-jammy` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:a2ea7ee5620cdae31a74a49ce26b6eb72c1ed542fca4e285a3482dddcc0be4d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **597.9 MB (597896139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:accd3ef89f8d8d5662bfc4c1cc81334d09a114caed401afe39c9a7a94f46d615`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 19:56:59 GMT
CMD ["gradle"]
# Fri, 20 Nov 2026 19:56:59 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 20 Nov 2026 19:56:59 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 20 Nov 2026 19:56:59 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 20 Nov 2026 19:56:59 GMT
WORKDIR /home/gradle
# Fri, 20 Nov 2026 19:58:42 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 20 Nov 2026 19:58:42 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Fri, 20 Nov 2026 19:58:42 GMT
ENV JAVA_VERSION=21.0.13.0.3+6
# Fri, 20 Nov 2026 19:58:57 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading Liberica NIK"     && LIBERICA_NIK_AMD64_DOWNLOAD_SHA256=94e0256d16a97268a548cd427a803f9c5b2ef2134c2f8521826532153ba70df0     && LIBERICA_NIK_AARCH64_DOWNLOAD_SHA256=00cc8ae405e44ee63de0827c7a4d49fd865db324cb75554fa291c459b4621af1     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then LIBERICA_NIK_ARCHITECTURE=amd64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then LIBERICA_NIK_ARCHITECTURE=aarch64; fi     && LIBERICA_NIK_RELEASE_TAG=23.1.13+1-21.0.13.0.3+6     && LIBERICA_NIK_VERSION=23.1.13+1     && LIBERICA_NIK_PKG=https://github.com/bell-sw/LibericaNIK/releases/download/${LIBERICA_NIK_RELEASE_TAG}/bellsoft-liberica-vm-openjdk${JAVA_VERSION}-${LIBERICA_NIK_VERSION}-linux-${LIBERICA_NIK_ARCHITECTURE}.tar.gz     && wget --no-verbose --output-document=liberica-nik.tar.gz "${LIBERICA_NIK_PKG}"         && echo "Checking Liberica NIK download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then LIBERICA_NIK_DOWNLOAD_SHA256="${LIBERICA_NIK_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then LIBERICA_NIK_DOWNLOAD_SHA256="${LIBERICA_NIK_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${LIBERICA_NIK_DOWNLOAD_SHA256} *liberica-nik.tar.gz" | sha256sum --check -         && echo "Installing Liberica NIK"     && mkdir "${JAVA_HOME}"     && tar --extract --gunzip --file liberica-nik.tar.gz --strip-components=1 --directory "${JAVA_HOME}"     && rm liberica-nik.tar.gz     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing Liberica NIK installation"     && java --version     && javac --version     && native-image --version # buildkit
# Fri, 20 Nov 2026 19:58:57 GMT
ENV GRADLE_VERSION=9.9.2
# Fri, 20 Nov 2026 19:58:57 GMT
ARG GRADLE_DOWNLOAD_SHA256=971fcd7150ca4ba04852c0b2ca0d2d0ab9468e14b03473eab19528809914c76b
# Fri, 20 Nov 2026 19:58:59 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=971fcd7150ca4ba04852c0b2ca0d2d0ab9468e14b03473eab19528809914c76b
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 20 Nov 2026 19:58:59 GMT
USER gradle
# Fri, 20 Nov 2026 19:58:59 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=971fcd7150ca4ba04852c0b2ca0d2d0ab9468e14b03473eab19528809914c76b
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 20 Nov 2026 19:58:59 GMT
USER root
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4cd9a851abf23dcf8ff4e6dea8b65dc7a35475dc8b8f8ca647a91295954eee4`  
		Last Modified: Fri, 20 Nov 2026 19:59:33 GMT  
		Size: 4.3 KB (4314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30f71d37d0af10b34a0dbf216f8cd0b7d3895a91c1053d36a32c739a2a1a5cfb`  
		Last Modified: Fri, 20 Nov 2026 19:59:40 GMT  
		Size: 123.0 MB (122985148 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34b544144120dc502e44ce2700cdf74161029848d53f45b5de2389f421e7d6a1`  
		Last Modified: Fri, 20 Nov 2026 19:59:43 GMT  
		Size: 312.0 MB (312005167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:946a017988714bfa1cebbcd98367f494f3bbe90659679306c5e0db9a11c54ea7`  
		Last Modified: Fri, 20 Nov 2026 19:59:41 GMT  
		Size: 134.9 MB (134870748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f12ad3c59ea338779e75d9a1b4e958be7572c386fe1793b48a7b3eaf079d47dd`  
		Last Modified: Fri, 20 Nov 2026 19:59:35 GMT  
		Size: 29.3 KB (29329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:graal-jammy` - unknown; unknown

```console
$ docker pull gradle@sha256:cf83ee10f9ed06a3f7da8431d1173dfbcec7e22138d5c1fc62a2be8ce1572175
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 MB (9472541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e36b50b181e6849cefcd3041313a461bb6cc310597cbd8016cb9a3bef0a29c37`

```dockerfile
```

-	Layers:
	-	`sha256:966884e6bc98ff8d64323342d6d3275046b344145b7a92d38feef83d115e712a`  
		Last Modified: Fri, 20 Nov 2026 19:59:34 GMT  
		Size: 9.4 MB (9441534 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bab0fe7373235ccf33282a13e04db07683d1cfe918e393602ed9ff4bdb322c1b`  
		Last Modified: Fri, 20 Nov 2026 19:59:33 GMT  
		Size: 31.0 KB (31007 bytes)  
		MIME: application/vnd.in-toto+json
