## `gradle:8-graal-jammy`

```console
$ docker pull gradle@sha256:1c5b2c1137688aba8a3beb1ac87addeba8c2248b97eed32b85b3d3e6cb9cd5bc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:8-graal-jammy` - linux; amd64

```console
$ docker pull gradle@sha256:c845a1671574cf1e1498411a4bcf97539fb4601c1c5ec22e2cdf2d139c76a282
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **614.2 MB (614177614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7270953c0cd827610d6466cd0916689d3ca11aaaa6b9e729b644d4a79c8ff9d`
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
# Fri, 20 Nov 2026 03:17:38 GMT
CMD ["gradle"]
# Fri, 20 Nov 2026 03:17:38 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 20 Nov 2026 03:17:38 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 20 Nov 2026 03:17:38 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 20 Nov 2026 03:17:38 GMT
WORKDIR /home/gradle
# Fri, 20 Nov 2026 03:18:01 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 20 Nov 2026 03:18:01 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Fri, 20 Nov 2026 03:18:01 GMT
ENV JAVA_VERSION=21.0.13.0.3+6
# Fri, 20 Nov 2026 03:18:16 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading Liberica NIK"     && LIBERICA_NIK_AMD64_DOWNLOAD_SHA256=94e0256d16a97268a548cd427a803f9c5b2ef2134c2f8521826532153ba70df0     && LIBERICA_NIK_AARCH64_DOWNLOAD_SHA256=00cc8ae405e44ee63de0827c7a4d49fd865db324cb75554fa291c459b4621af1     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then LIBERICA_NIK_ARCHITECTURE=amd64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then LIBERICA_NIK_ARCHITECTURE=aarch64; fi     && LIBERICA_NIK_RELEASE_TAG=23.1.13+1-21.0.13.0.3+6     && LIBERICA_NIK_VERSION=23.1.13+1     && LIBERICA_NIK_PKG=https://github.com/bell-sw/LibericaNIK/releases/download/${LIBERICA_NIK_RELEASE_TAG}/bellsoft-liberica-vm-openjdk${JAVA_VERSION}-${LIBERICA_NIK_VERSION}-linux-${LIBERICA_NIK_ARCHITECTURE}.tar.gz     && wget --no-verbose --output-document=liberica-nik.tar.gz "${LIBERICA_NIK_PKG}"         && echo "Checking Liberica NIK download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then LIBERICA_NIK_DOWNLOAD_SHA256="${LIBERICA_NIK_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then LIBERICA_NIK_DOWNLOAD_SHA256="${LIBERICA_NIK_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${LIBERICA_NIK_DOWNLOAD_SHA256} *liberica-nik.tar.gz" | sha256sum --check -         && echo "Installing Liberica NIK"     && mkdir "${JAVA_HOME}"     && tar --extract --gunzip --file liberica-nik.tar.gz --strip-components=1 --directory "${JAVA_HOME}"     && rm liberica-nik.tar.gz     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing Liberica NIK installation"     && java --version     && javac --version     && native-image --version # buildkit
# Fri, 20 Nov 2026 03:18:16 GMT
ENV GRADLE_VERSION=8.14.7
# Fri, 20 Nov 2026 03:18:16 GMT
ARG GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
# Fri, 20 Nov 2026 03:18:20 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 20 Nov 2026 03:18:20 GMT
USER gradle
# Fri, 20 Nov 2026 03:18:20 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 20 Nov 2026 03:18:20 GMT
USER root
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e260819327be51384df5e36b1c0b5fd38cd61854e325982a4de390eee297a7e5`  
		Last Modified: Fri, 20 Nov 2026 03:18:53 GMT  
		Size: 4.3 KB (4303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a827f0c8768e625675d80a015727bef78e2124870ca430c4eca541a186673c1c`  
		Last Modified: Fri, 20 Nov 2026 03:18:59 GMT  
		Size: 126.8 MB (126843883 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30616ea879e9f5a262ccfaa8fa937eed4d069524a3ca996e43dce19d5a5b6bcc`  
		Last Modified: Fri, 20 Nov 2026 03:19:02 GMT  
		Size: 317.8 MB (317772765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2aee02a688248e344841e04c298d7daacb8ef7afceeeac899fa8efc1b1bfe045`  
		Last Modified: Fri, 20 Nov 2026 03:18:59 GMT  
		Size: 139.4 MB (139431920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c37bd7df2a559a7a0acdee468a91e3f358f2baadc3e5ec1b6ac41fab11ec1ed`  
		Last Modified: Fri, 20 Nov 2026 03:18:54 GMT  
		Size: 54.9 KB (54896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-graal-jammy` - unknown; unknown

```console
$ docker pull gradle@sha256:eb9ce8f43cd3ad3d95d76c70974683d7ee9664ec3f657e147384c73d66fe9c82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 MB (9441636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79f1a0ed473bbc7ce5c66f96a2a713e05bb2fce8231e0613fd150d6193e2889c`

```dockerfile
```

-	Layers:
	-	`sha256:a851a2421ffaebd5e507d55d4f4a16bccb9815bb99b7cba49888d31793d9de3d`  
		Last Modified: Fri, 20 Nov 2026 03:18:53 GMT  
		Size: 9.4 MB (9411819 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4c2cd54a7f3c5d8aece3438df87f85dc557759f44951239640c3ea7a4ac2ac08`  
		Last Modified: Fri, 20 Nov 2026 03:18:53 GMT  
		Size: 29.8 KB (29817 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:8-graal-jammy` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:b003a47b904037442022eb5fa571192afc03664628685875193ec5b2a80ed465
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **602.5 MB (602488908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5243cb85af3dcc62c760367f841cc19143f6fbf4464415b132814c1a177baa19`
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
# Fri, 20 Nov 2026 03:18:22 GMT
CMD ["gradle"]
# Fri, 20 Nov 2026 03:18:22 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 20 Nov 2026 03:18:22 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 20 Nov 2026 03:18:22 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 20 Nov 2026 03:18:22 GMT
WORKDIR /home/gradle
# Fri, 20 Nov 2026 03:18:47 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 20 Nov 2026 03:18:47 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Fri, 20 Nov 2026 03:18:47 GMT
ENV JAVA_VERSION=21.0.13.0.3+6
# Fri, 20 Nov 2026 03:19:00 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading Liberica NIK"     && LIBERICA_NIK_AMD64_DOWNLOAD_SHA256=94e0256d16a97268a548cd427a803f9c5b2ef2134c2f8521826532153ba70df0     && LIBERICA_NIK_AARCH64_DOWNLOAD_SHA256=00cc8ae405e44ee63de0827c7a4d49fd865db324cb75554fa291c459b4621af1     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then LIBERICA_NIK_ARCHITECTURE=amd64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then LIBERICA_NIK_ARCHITECTURE=aarch64; fi     && LIBERICA_NIK_RELEASE_TAG=23.1.13+1-21.0.13.0.3+6     && LIBERICA_NIK_VERSION=23.1.13+1     && LIBERICA_NIK_PKG=https://github.com/bell-sw/LibericaNIK/releases/download/${LIBERICA_NIK_RELEASE_TAG}/bellsoft-liberica-vm-openjdk${JAVA_VERSION}-${LIBERICA_NIK_VERSION}-linux-${LIBERICA_NIK_ARCHITECTURE}.tar.gz     && wget --no-verbose --output-document=liberica-nik.tar.gz "${LIBERICA_NIK_PKG}"         && echo "Checking Liberica NIK download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then LIBERICA_NIK_DOWNLOAD_SHA256="${LIBERICA_NIK_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then LIBERICA_NIK_DOWNLOAD_SHA256="${LIBERICA_NIK_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${LIBERICA_NIK_DOWNLOAD_SHA256} *liberica-nik.tar.gz" | sha256sum --check -         && echo "Installing Liberica NIK"     && mkdir "${JAVA_HOME}"     && tar --extract --gunzip --file liberica-nik.tar.gz --strip-components=1 --directory "${JAVA_HOME}"     && rm liberica-nik.tar.gz     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing Liberica NIK installation"     && java --version     && javac --version     && native-image --version # buildkit
# Fri, 20 Nov 2026 03:19:00 GMT
ENV GRADLE_VERSION=8.14.7
# Fri, 20 Nov 2026 03:19:00 GMT
ARG GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
# Fri, 20 Nov 2026 03:19:04 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 20 Nov 2026 03:19:04 GMT
USER gradle
# Fri, 20 Nov 2026 03:19:04 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 20 Nov 2026 03:19:04 GMT
USER root
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8519f9c8706eddf8eb15a231109babde764313eefb46370fa9bfb9a738608a3`  
		Last Modified: Fri, 20 Nov 2026 03:19:38 GMT  
		Size: 4.3 KB (4309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d3a5729a6bd387b194e4d64c62c17dcde3344294889f39204f0af766b297e72`  
		Last Modified: Fri, 20 Nov 2026 03:19:45 GMT  
		Size: 123.0 MB (122986583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:456f47982f656302a0307521ce6b96f82c5eecbb724709d28e8ff0fc7b0d2fbd`  
		Last Modified: Fri, 20 Nov 2026 03:19:48 GMT  
		Size: 312.0 MB (312005124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1664caf02e366dd0644b366a5e6e20ac57a9788ef96006eb39aaf749c117b211`  
		Last Modified: Fri, 20 Nov 2026 03:19:45 GMT  
		Size: 139.4 MB (139431939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f7832c1d44ff3a425f54e8c2b9776011a1fe0e68cefe6bf870a7cd2adb7ac38`  
		Last Modified: Fri, 20 Nov 2026 03:19:40 GMT  
		Size: 59.5 KB (59520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-graal-jammy` - unknown; unknown

```console
$ docker pull gradle@sha256:3b638d0448fd256326914bd3458938e344608c48adf4a98fea65694756a89cce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 MB (9435206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e4dff0c8b3d7b5918735fb266008c77b03dcc7005e0dc0a1927e808b3daa182`

```dockerfile
```

-	Layers:
	-	`sha256:4a9460ac6a155db9f4109cc948ce037dc9735dd7f096d38bb4d24a9172c6bfaa`  
		Last Modified: Fri, 20 Nov 2026 03:19:39 GMT  
		Size: 9.4 MB (9405165 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f0d0e0ae8f5310b96d2258282c60c63f0835063c0a7e0335a76a74cbef7d50a1`  
		Last Modified: Fri, 20 Nov 2026 03:19:38 GMT  
		Size: 30.0 KB (30041 bytes)  
		MIME: application/vnd.in-toto+json
