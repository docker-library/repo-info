## `gradle:9-jdk17-graal-jammy`

```console
$ docker pull gradle@sha256:91516e61ecdf9fc95b4682636f333fe14b5a811d37fab525eb7411e0b8981189
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:9-jdk17-graal-jammy` - linux; amd64

```console
$ docker pull gradle@sha256:c57fdcc78a7ac6662b059d4ccd8a69ce9397cd5d21945b1dd57d6f2b142ab5b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **594.2 MB (594221276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc758301e9be10e64a1fac9c8f0579de78c6c30c3830c161165c4d44ac48da4e`
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
# Fri, 20 Nov 2026 03:17:25 GMT
CMD ["gradle"]
# Fri, 20 Nov 2026 03:17:25 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 20 Nov 2026 03:17:25 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 20 Nov 2026 03:17:25 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 20 Nov 2026 03:17:25 GMT
WORKDIR /home/gradle
# Fri, 20 Nov 2026 03:17:49 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 20 Nov 2026 03:17:49 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Fri, 20 Nov 2026 03:17:49 GMT
ENV JAVA_VERSION=17.0.21.0.3+6
# Fri, 20 Nov 2026 03:18:08 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading Liberica NIK"     && LIBERICA_NIK_AMD64_DOWNLOAD_SHA256=0e6b739f30701397534bd75119d2ede5ffad0dc7b26d48d6c28e7aa88f8cde30     && LIBERICA_NIK_AARCH64_DOWNLOAD_SHA256=fd0b2796c7cfba8f1425e4c77d5a2043e0504b4e59b87a0d8a6eddf440aeea3c     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then LIBERICA_NIK_ARCHITECTURE=amd64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then LIBERICA_NIK_ARCHITECTURE=aarch64; fi     && LIBERICA_NIK_RELEASE_TAG=23.0.14+1-17.0.21.0.3+6     && LIBERICA_NIK_VERSION=23.0.14+1     && LIBERICA_NIK_PKG=https://github.com/bell-sw/LibericaNIK/releases/download/${LIBERICA_NIK_RELEASE_TAG}/bellsoft-liberica-vm-openjdk${JAVA_VERSION}-${LIBERICA_NIK_VERSION}-linux-${LIBERICA_NIK_ARCHITECTURE}.tar.gz     && wget --no-verbose --output-document=liberica-nik.tar.gz "${LIBERICA_NIK_PKG}"         && echo "Checking Liberica NIK download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then LIBERICA_NIK_DOWNLOAD_SHA256="${LIBERICA_NIK_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then LIBERICA_NIK_DOWNLOAD_SHA256="${LIBERICA_NIK_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${LIBERICA_NIK_DOWNLOAD_SHA256} *liberica-nik.tar.gz" | sha256sum --check -         && echo "Installing Liberica NIK"     && mkdir "${JAVA_HOME}"     && tar --extract --gunzip --file liberica-nik.tar.gz --strip-components=1 --directory "${JAVA_HOME}"     && rm liberica-nik.tar.gz     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing Liberica NIK installation"     && java --version     && javac --version     && native-image --version # buildkit
# Fri, 20 Nov 2026 03:18:08 GMT
ENV GRADLE_VERSION=9.9.1
# Fri, 20 Nov 2026 03:18:08 GMT
ARG GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
# Fri, 20 Nov 2026 03:18:35 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 20 Nov 2026 03:18:35 GMT
USER gradle
# Fri, 20 Nov 2026 03:18:35 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 20 Nov 2026 03:18:35 GMT
USER root
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d4adfc559700057b6df1822af9e26fdc28be0f2cf397cc13b4987f83a5c2f15`  
		Last Modified: Fri, 20 Nov 2026 03:19:08 GMT  
		Size: 4.3 KB (4303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46f85082a43c886ff8c81f1926d04a4b5edf0f845cf83d87943ee4e1c4bcdf3d`  
		Last Modified: Fri, 20 Nov 2026 03:19:15 GMT  
		Size: 126.8 MB (126843640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3fd31cd2b0b8503e007b25d448ae7bd5134e3e55249ecb9f5f87b1ae4ada617`  
		Last Modified: Fri, 20 Nov 2026 03:19:18 GMT  
		Size: 302.5 MB (302456971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8075b7b1279eacdd9270746a16993df40d27b89a3a2169baea65e210f3e836f`  
		Last Modified: Fri, 20 Nov 2026 03:19:15 GMT  
		Size: 134.8 MB (134820905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47f0355849ffb089a201567dd247eaca966d303cfc7c9217fd4a6c63a2b47af8`  
		Last Modified: Fri, 20 Nov 2026 03:19:09 GMT  
		Size: 25.6 KB (25610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk17-graal-jammy` - unknown; unknown

```console
$ docker pull gradle@sha256:0b8df7e500ca516b14bd695089dcf6e1bcb09ca916df56ef7b0e9086a91bc757
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 MB (9488560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54f6c6be712dcdea382cfeff0f08432c9e5fc389215db5562ee44141d117ac93`

```dockerfile
```

-	Layers:
	-	`sha256:7f72d5eabeed94b0732c8a7da7739ee72bf909ada1bda3983ade8bd11ded5dce`  
		Last Modified: Fri, 20 Nov 2026 03:19:08 GMT  
		Size: 9.5 MB (9460358 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e90ce7a2a03d158666cf783d50968992aa99edf6514e127751ce0e25d5582b21`  
		Last Modified: Fri, 20 Nov 2026 03:19:08 GMT  
		Size: 28.2 KB (28202 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk17-graal-jammy` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:3c4602aa08b4f149e00b1614b37ed64d04810ad41d3a51ae4d1f5b1ead17bbba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **582.8 MB (582827964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d418e5cea1c7d1345d5199c921a1a333b424e40481c20baeb84c6fc4bae4b12`
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
# Fri, 20 Nov 2026 03:18:19 GMT
CMD ["gradle"]
# Fri, 20 Nov 2026 03:18:19 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 20 Nov 2026 03:18:19 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 20 Nov 2026 03:18:19 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 20 Nov 2026 03:18:19 GMT
WORKDIR /home/gradle
# Fri, 20 Nov 2026 03:18:44 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 20 Nov 2026 03:18:44 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Fri, 20 Nov 2026 03:18:44 GMT
ENV JAVA_VERSION=17.0.21.0.3+6
# Fri, 20 Nov 2026 03:19:03 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading Liberica NIK"     && LIBERICA_NIK_AMD64_DOWNLOAD_SHA256=0e6b739f30701397534bd75119d2ede5ffad0dc7b26d48d6c28e7aa88f8cde30     && LIBERICA_NIK_AARCH64_DOWNLOAD_SHA256=fd0b2796c7cfba8f1425e4c77d5a2043e0504b4e59b87a0d8a6eddf440aeea3c     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then LIBERICA_NIK_ARCHITECTURE=amd64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then LIBERICA_NIK_ARCHITECTURE=aarch64; fi     && LIBERICA_NIK_RELEASE_TAG=23.0.14+1-17.0.21.0.3+6     && LIBERICA_NIK_VERSION=23.0.14+1     && LIBERICA_NIK_PKG=https://github.com/bell-sw/LibericaNIK/releases/download/${LIBERICA_NIK_RELEASE_TAG}/bellsoft-liberica-vm-openjdk${JAVA_VERSION}-${LIBERICA_NIK_VERSION}-linux-${LIBERICA_NIK_ARCHITECTURE}.tar.gz     && wget --no-verbose --output-document=liberica-nik.tar.gz "${LIBERICA_NIK_PKG}"         && echo "Checking Liberica NIK download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then LIBERICA_NIK_DOWNLOAD_SHA256="${LIBERICA_NIK_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then LIBERICA_NIK_DOWNLOAD_SHA256="${LIBERICA_NIK_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${LIBERICA_NIK_DOWNLOAD_SHA256} *liberica-nik.tar.gz" | sha256sum --check -         && echo "Installing Liberica NIK"     && mkdir "${JAVA_HOME}"     && tar --extract --gunzip --file liberica-nik.tar.gz --strip-components=1 --directory "${JAVA_HOME}"     && rm liberica-nik.tar.gz     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing Liberica NIK installation"     && java --version     && javac --version     && native-image --version # buildkit
# Fri, 20 Nov 2026 03:19:03 GMT
ENV GRADLE_VERSION=9.9.1
# Fri, 20 Nov 2026 03:19:03 GMT
ARG GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
# Fri, 20 Nov 2026 03:19:07 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 20 Nov 2026 03:19:07 GMT
USER gradle
# Fri, 20 Nov 2026 03:19:07 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 20 Nov 2026 03:19:07 GMT
USER root
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6b541aaf915ed634008084a37043da001677c64d5ffb6c6a1429afca35c5e41`  
		Last Modified: Fri, 20 Nov 2026 03:19:39 GMT  
		Size: 4.3 KB (4308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddba42476731d26a340a8679fe859d1721a693cdccb37acd7b15aa59cb001581`  
		Last Modified: Fri, 20 Nov 2026 03:19:45 GMT  
		Size: 123.0 MB (122986618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97177702a55ac092e1fd85eed3f15b9a8e8725cd0335a92a045bc832e3a54fcd`  
		Last Modified: Fri, 20 Nov 2026 03:19:48 GMT  
		Size: 297.0 MB (296985368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cda9fdbaaaa492e46e5c4dec1a975e2be05a6092ec925b7206aedd79f6d46f6c`  
		Last Modified: Fri, 20 Nov 2026 03:19:46 GMT  
		Size: 134.8 MB (134820900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0880f8d133a3bbe5415f11a2af3d2a9cc640b4df32a827584437fb287ddd8a3`  
		Last Modified: Fri, 20 Nov 2026 03:19:41 GMT  
		Size: 29.3 KB (29337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk17-graal-jammy` - unknown; unknown

```console
$ docker pull gradle@sha256:831c474be0c8f6c0ee02e4470f9e7887461101e291240efb48e586daf78e5ebb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 MB (9482011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5a435e2bb609ddcb52fdd91147e2ee25a59813fe653ff3513f3f3b1214babcd`

```dockerfile
```

-	Layers:
	-	`sha256:adf29b0f8a6ccc30f9de7a04bfc728dca13ebad1d6701dca9f906bf81bbc34bd`  
		Last Modified: Fri, 20 Nov 2026 03:19:40 GMT  
		Size: 9.5 MB (9453644 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:50bffee382284e7e4824f055f4cf0f620dbb22bcbdff06f5b0ac1dc48b248a73`  
		Last Modified: Fri, 20 Nov 2026 03:19:39 GMT  
		Size: 28.4 KB (28367 bytes)  
		MIME: application/vnd.in-toto+json
