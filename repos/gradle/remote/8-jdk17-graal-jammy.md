## `gradle:8-jdk17-graal-jammy`

```console
$ docker pull gradle@sha256:cc01c0c409f0d0deead5e37178386316f2727fd39f063d3ba6bf6a8596d3c9a0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:8-jdk17-graal-jammy` - linux; amd64

```console
$ docker pull gradle@sha256:7b9daa3d65be2351cf5ec67509425bbd9a7a604198681b001f2b75673fbdeee5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **600.8 MB (600847630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ece229476bb429bcf336d723fe705bb4cc2212b78e706986f86ecb4b1bc508e`
-	Default Command: `["gradle"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 20:15:27 GMT
CMD ["gradle"]
# Wed, 11 Nov 2026 20:15:27 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 11 Nov 2026 20:15:27 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 11 Nov 2026 20:15:27 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 11 Nov 2026 20:15:27 GMT
WORKDIR /home/gradle
# Wed, 11 Nov 2026 20:15:54 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 11 Nov 2026 20:15:54 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Wed, 11 Nov 2026 20:15:54 GMT
ENV JAVA_VERSION=17.0.21.0.3+6
# Wed, 11 Nov 2026 20:16:05 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading Liberica NIK"     && LIBERICA_NIK_AMD64_DOWNLOAD_SHA256=0e6b739f30701397534bd75119d2ede5ffad0dc7b26d48d6c28e7aa88f8cde30     && LIBERICA_NIK_AARCH64_DOWNLOAD_SHA256=fd0b2796c7cfba8f1425e4c77d5a2043e0504b4e59b87a0d8a6eddf440aeea3c     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then LIBERICA_NIK_ARCHITECTURE=amd64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then LIBERICA_NIK_ARCHITECTURE=aarch64; fi     && LIBERICA_NIK_RELEASE_TAG=23.0.14+1-17.0.21.0.3+6     && LIBERICA_NIK_VERSION=23.0.14+1     && LIBERICA_NIK_PKG=https://github.com/bell-sw/LibericaNIK/releases/download/${LIBERICA_NIK_RELEASE_TAG}/bellsoft-liberica-vm-openjdk${JAVA_VERSION}-${LIBERICA_NIK_VERSION}-linux-${LIBERICA_NIK_ARCHITECTURE}.tar.gz     && wget --no-verbose --output-document=liberica-nik.tar.gz "${LIBERICA_NIK_PKG}"         && echo "Checking Liberica NIK download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then LIBERICA_NIK_DOWNLOAD_SHA256="${LIBERICA_NIK_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then LIBERICA_NIK_DOWNLOAD_SHA256="${LIBERICA_NIK_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${LIBERICA_NIK_DOWNLOAD_SHA256} *liberica-nik.tar.gz" | sha256sum --check -         && echo "Installing Liberica NIK"     && mkdir "${JAVA_HOME}"     && tar --extract --gunzip --file liberica-nik.tar.gz --strip-components=1 --directory "${JAVA_HOME}"     && rm liberica-nik.tar.gz     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing Liberica NIK installation"     && java --version     && javac --version     && native-image --version # buildkit
# Wed, 11 Nov 2026 20:16:05 GMT
ENV GRADLE_VERSION=8.14.7
# Wed, 11 Nov 2026 20:16:05 GMT
ARG GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
# Wed, 11 Nov 2026 20:16:08 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 11 Nov 2026 20:16:08 GMT
USER gradle
# Wed, 11 Nov 2026 20:16:09 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 11 Nov 2026 20:16:09 GMT
USER root
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9ac676f2787587b213d6e8b1b2ff40c3ed4e6db4864731816b5c69f6970b0c3`  
		Last Modified: Wed, 11 Nov 2026 20:16:43 GMT  
		Size: 4.3 KB (4309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c700c34a2a3498faf2c2447cd185c0de2357df6b1057340193ad5a90cb0d940`  
		Last Modified: Wed, 11 Nov 2026 20:16:50 GMT  
		Size: 129.1 MB (129146892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:292885995b3b12f32730826d10a4e9eb0e4b12b622b1a432aa453c4129b711bd`  
		Last Modified: Wed, 11 Nov 2026 20:16:53 GMT  
		Size: 302.5 MB (302457088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecfe04d262440f99a48659702eb379c84b7bdc89c5c0a08a4f84098fe3aee859`  
		Last Modified: Wed, 11 Nov 2026 20:16:51 GMT  
		Size: 139.4 MB (139431921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f75a0b249fbd599906cf89087e401e4c8f248756936d5c634a65e66ec2f7bfd6`  
		Last Modified: Wed, 11 Nov 2026 20:16:44 GMT  
		Size: 54.9 KB (54900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk17-graal-jammy` - unknown; unknown

```console
$ docker pull gradle@sha256:84ed436537deaf161c5a6c5513a9f1b72f4a07d1e5c83d098bac8e7e9135e6b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 MB (9451926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30a1d12e68970ae0cc2cbe950f9e0f647864f18804c0f550d5ea65f66a1c43fa`

```dockerfile
```

-	Layers:
	-	`sha256:bb476dc1679c52f2f5be43db981a0b825e1fb950021ef0a0c303172f05af7e68`  
		Last Modified: Wed, 11 Nov 2026 20:16:44 GMT  
		Size: 9.4 MB (9424037 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4a77dcc95d427b5828e10004acb615463cfc0810de4f67cc6a769f6fb7dff197`  
		Last Modified: Wed, 11 Nov 2026 20:16:43 GMT  
		Size: 27.9 KB (27889 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:8-jdk17-graal-jammy` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:df1c35e3c75e010cb5c21839857efc42a27ca95f4e709612b78b383ab135b1d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **587.5 MB (587453847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e992fa4e86af22687b3af6da8d940dae4e7049a3fea4d4de081d94966f3b250`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:25:23 GMT
CMD ["gradle"]
# Wed, 11 Nov 2026 23:25:23 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 11 Nov 2026 23:25:23 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 11 Nov 2026 23:25:23 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 11 Nov 2026 23:25:23 GMT
WORKDIR /home/gradle
# Wed, 11 Nov 2026 23:25:47 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 11 Nov 2026 23:25:47 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Wed, 11 Nov 2026 23:25:47 GMT
ENV JAVA_VERSION=17.0.21.0.3+6
# Wed, 11 Nov 2026 23:25:58 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading Liberica NIK"     && LIBERICA_NIK_AMD64_DOWNLOAD_SHA256=0e6b739f30701397534bd75119d2ede5ffad0dc7b26d48d6c28e7aa88f8cde30     && LIBERICA_NIK_AARCH64_DOWNLOAD_SHA256=fd0b2796c7cfba8f1425e4c77d5a2043e0504b4e59b87a0d8a6eddf440aeea3c     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then LIBERICA_NIK_ARCHITECTURE=amd64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then LIBERICA_NIK_ARCHITECTURE=aarch64; fi     && LIBERICA_NIK_RELEASE_TAG=23.0.14+1-17.0.21.0.3+6     && LIBERICA_NIK_VERSION=23.0.14+1     && LIBERICA_NIK_PKG=https://github.com/bell-sw/LibericaNIK/releases/download/${LIBERICA_NIK_RELEASE_TAG}/bellsoft-liberica-vm-openjdk${JAVA_VERSION}-${LIBERICA_NIK_VERSION}-linux-${LIBERICA_NIK_ARCHITECTURE}.tar.gz     && wget --no-verbose --output-document=liberica-nik.tar.gz "${LIBERICA_NIK_PKG}"         && echo "Checking Liberica NIK download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then LIBERICA_NIK_DOWNLOAD_SHA256="${LIBERICA_NIK_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then LIBERICA_NIK_DOWNLOAD_SHA256="${LIBERICA_NIK_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${LIBERICA_NIK_DOWNLOAD_SHA256} *liberica-nik.tar.gz" | sha256sum --check -         && echo "Installing Liberica NIK"     && mkdir "${JAVA_HOME}"     && tar --extract --gunzip --file liberica-nik.tar.gz --strip-components=1 --directory "${JAVA_HOME}"     && rm liberica-nik.tar.gz     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing Liberica NIK installation"     && java --version     && javac --version     && native-image --version # buildkit
# Wed, 11 Nov 2026 23:25:58 GMT
ENV GRADLE_VERSION=8.14.7
# Wed, 11 Nov 2026 23:25:58 GMT
ARG GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
# Wed, 11 Nov 2026 23:26:01 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 11 Nov 2026 23:26:01 GMT
USER gradle
# Wed, 11 Nov 2026 23:26:02 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 11 Nov 2026 23:26:02 GMT
USER root
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e27a88f7ebaaaf235a39512c74512afe8c57db3d0e14b692b9785813e1f5e90`  
		Last Modified: Wed, 11 Nov 2026 23:26:36 GMT  
		Size: 4.3 KB (4308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe9f12ca8726c23843f8fd0b21c7c826c2be0487c7aed781dc426a85fd63f874`  
		Last Modified: Wed, 11 Nov 2026 23:26:42 GMT  
		Size: 123.0 MB (122971434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c609aaab17b079d86a1e4e999ee80dd7cfc3b3aeb86daa4219b9c955b2683a7`  
		Last Modified: Wed, 11 Nov 2026 23:26:46 GMT  
		Size: 297.0 MB (296985205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdfc3f654ea5c6d3017d92ea4a892c537ebbbd17127888a97418e07047f615c3`  
		Last Modified: Wed, 11 Nov 2026 23:26:43 GMT  
		Size: 139.4 MB (139431921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adb8e8f33fd0ec110b295968ac4bfc07a08cd9170d5cb98be66cfb9adf464a86`  
		Last Modified: Wed, 11 Nov 2026 23:26:37 GMT  
		Size: 59.5 KB (59535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk17-graal-jammy` - unknown; unknown

```console
$ docker pull gradle@sha256:69d8fc184266f6aada3b930e2602eab8a7aee3b062b162386d8460fc26f0c9e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 MB (9445956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5d0ca22ee2e8d59e2b5f87fe5d79c9e3eb4debf3fdb62362b8494dedb7cde6f`

```dockerfile
```

-	Layers:
	-	`sha256:93d545c31f9ad556aeedb5ee3682c53aecc7b1a5243f05b421f784f79bed415c`  
		Last Modified: Wed, 11 Nov 2026 23:26:36 GMT  
		Size: 9.4 MB (9417915 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5aa2b92906372a3754dcbea547b87e0ba28f2964c1e058302f00c11a43c4208e`  
		Last Modified: Wed, 11 Nov 2026 23:26:36 GMT  
		Size: 28.0 KB (28041 bytes)  
		MIME: application/vnd.in-toto+json
