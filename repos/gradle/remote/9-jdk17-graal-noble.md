## `gradle:9-jdk17-graal-noble`

```console
$ docker pull gradle@sha256:77270a1578165d854adcacc8c49643683e3bb5e80c737c1db5b38522bfdafe3b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:9-jdk17-graal-noble` - linux; amd64

```console
$ docker pull gradle@sha256:3584f6dbe1276dbcd17f21b080e53cd4cbb11ebeaa57294477a94ab9f086fff3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **631.5 MB (631515939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7947bf8739578ea51b2b21f3e03cc005cdc0cb8b73d4832ea63edf4026271f74`
-	Default Command: `["gradle"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:09:41 GMT
CMD ["gradle"]
# Mon, 26 Oct 2026 23:09:41 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 26 Oct 2026 23:09:41 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Mon, 26 Oct 2026 23:09:41 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 26 Oct 2026 23:09:41 GMT
WORKDIR /home/gradle
# Mon, 26 Oct 2026 23:10:14 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Mon, 26 Oct 2026 23:10:14 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Mon, 26 Oct 2026 23:10:14 GMT
ENV JAVA_VERSION=17.0.20.1+2
# Mon, 26 Oct 2026 23:10:29 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading Liberica NIK"     && LIBERICA_NIK_AMD64_DOWNLOAD_SHA256=68019a5b3e51337e4a3db6ec6916a14b5c403769fa87dfb4798889be87c33448     && LIBERICA_NIK_AARCH64_DOWNLOAD_SHA256=20a0b93d552b8d0a22d8addf903aac0cf709bdcc87ee2312fe8900da51d0458a     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then LIBERICA_NIK_ARCHITECTURE=amd64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then LIBERICA_NIK_ARCHITECTURE=aarch64; fi     && LIBERICA_NIK_RELEASE_TAG=23.0.13.1+1-17.0.20.1+2     && LIBERICA_NIK_VERSION=23.0.13.1+1     && LIBERICA_NIK_PKG=https://github.com/bell-sw/LibericaNIK/releases/download/${LIBERICA_NIK_RELEASE_TAG}/bellsoft-liberica-vm-openjdk${JAVA_VERSION}-${LIBERICA_NIK_VERSION}-linux-${LIBERICA_NIK_ARCHITECTURE}.tar.gz     && wget --no-verbose --output-document=liberica-nik.tar.gz "${LIBERICA_NIK_PKG}"         && echo "Checking Liberica NIK download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then LIBERICA_NIK_DOWNLOAD_SHA256="${LIBERICA_NIK_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then LIBERICA_NIK_DOWNLOAD_SHA256="${LIBERICA_NIK_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${LIBERICA_NIK_DOWNLOAD_SHA256} *liberica-nik.tar.gz" | sha256sum --check -         && echo "Installing Liberica NIK"     && mkdir "${JAVA_HOME}"     && tar --extract --gunzip --file liberica-nik.tar.gz --strip-components=1 --directory "${JAVA_HOME}"     && rm liberica-nik.tar.gz     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing Liberica NIK installation"     && java --version     && javac --version     && native-image --version # buildkit
# Mon, 26 Oct 2026 23:10:29 GMT
ENV GRADLE_VERSION=9.8.2
# Mon, 26 Oct 2026 23:10:29 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Mon, 26 Oct 2026 23:10:32 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 26 Oct 2026 23:10:32 GMT
USER gradle
# Mon, 26 Oct 2026 23:10:32 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 26 Oct 2026 23:10:32 GMT
USER root
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81785bb9017806a7b7127aac827500f3576c84dc3e43aec98ed87afb2fab147b`  
		Last Modified: Mon, 26 Oct 2026 23:11:03 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6622e3879623cbb6b714b434f898a9a0f250181a52d976b7fa81474ee2e42e7`  
		Last Modified: Mon, 26 Oct 2026 23:11:11 GMT  
		Size: 148.3 MB (148331895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb5701c98a73d559354cfbbd6a55bf64c157169cd1a5534a849edc91405fea60`  
		Last Modified: Mon, 26 Oct 2026 23:11:14 GMT  
		Size: 301.9 MB (301855942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5766f8ff4c7a9bc7beb9e78d5cc571479e00b5f07d6239b9f9d7d413d3dd5d8a`  
		Last Modified: Mon, 26 Oct 2026 23:11:11 GMT  
		Size: 151.5 MB (151533566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35a80b3ad844263bef1296a8b74da49ea958f4cfbe215e200506c3fa9655e572`  
		Last Modified: Mon, 26 Oct 2026 23:11:04 GMT  
		Size: 25.6 KB (25604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk17-graal-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:39ad9f887868a0ddcc53844a687023c028d8a363973f129076ef738253bf10d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 MB (9090550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4370325c9adafb0f3ea87d14c3d4fabf48c8af570d5ea8e7ee1331ba8db70788`

```dockerfile
```

-	Layers:
	-	`sha256:d1bc3ce79b0888bcf11aba96e02961af6107bac327d52465796c2fa4ddfaae9b`  
		Last Modified: Mon, 26 Oct 2026 23:11:04 GMT  
		Size: 9.1 MB (9062116 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:38cb3e5ec5db05204821b1719d812f38096f29d8226e0307727ccc34bb56f705`  
		Last Modified: Mon, 26 Oct 2026 23:11:03 GMT  
		Size: 28.4 KB (28434 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk17-graal-noble` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:69c567e9552b91de81a5807c055ebdc6c9411c2c6429e8a59f25144e7a439297
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **620.3 MB (620306538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5cf9b336c8c4464ff90a57d891fb98d17669d632fbef8c5e7c37ff38560f62f`
-	Default Command: `["gradle"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:19:39 GMT
CMD ["gradle"]
# Mon, 26 Oct 2026 23:19:39 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 26 Oct 2026 23:19:39 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Mon, 26 Oct 2026 23:19:39 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 26 Oct 2026 23:19:39 GMT
WORKDIR /home/gradle
# Mon, 26 Oct 2026 23:20:14 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Mon, 26 Oct 2026 23:20:14 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Mon, 26 Oct 2026 23:20:14 GMT
ENV JAVA_VERSION=17.0.20.1+2
# Mon, 26 Oct 2026 23:20:30 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading Liberica NIK"     && LIBERICA_NIK_AMD64_DOWNLOAD_SHA256=68019a5b3e51337e4a3db6ec6916a14b5c403769fa87dfb4798889be87c33448     && LIBERICA_NIK_AARCH64_DOWNLOAD_SHA256=20a0b93d552b8d0a22d8addf903aac0cf709bdcc87ee2312fe8900da51d0458a     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then LIBERICA_NIK_ARCHITECTURE=amd64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then LIBERICA_NIK_ARCHITECTURE=aarch64; fi     && LIBERICA_NIK_RELEASE_TAG=23.0.13.1+1-17.0.20.1+2     && LIBERICA_NIK_VERSION=23.0.13.1+1     && LIBERICA_NIK_PKG=https://github.com/bell-sw/LibericaNIK/releases/download/${LIBERICA_NIK_RELEASE_TAG}/bellsoft-liberica-vm-openjdk${JAVA_VERSION}-${LIBERICA_NIK_VERSION}-linux-${LIBERICA_NIK_ARCHITECTURE}.tar.gz     && wget --no-verbose --output-document=liberica-nik.tar.gz "${LIBERICA_NIK_PKG}"         && echo "Checking Liberica NIK download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then LIBERICA_NIK_DOWNLOAD_SHA256="${LIBERICA_NIK_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then LIBERICA_NIK_DOWNLOAD_SHA256="${LIBERICA_NIK_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${LIBERICA_NIK_DOWNLOAD_SHA256} *liberica-nik.tar.gz" | sha256sum --check -         && echo "Installing Liberica NIK"     && mkdir "${JAVA_HOME}"     && tar --extract --gunzip --file liberica-nik.tar.gz --strip-components=1 --directory "${JAVA_HOME}"     && rm liberica-nik.tar.gz     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing Liberica NIK installation"     && java --version     && javac --version     && native-image --version # buildkit
# Mon, 26 Oct 2026 23:20:30 GMT
ENV GRADLE_VERSION=9.8.2
# Mon, 26 Oct 2026 23:20:30 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Mon, 26 Oct 2026 23:20:32 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 26 Oct 2026 23:20:32 GMT
USER gradle
# Mon, 26 Oct 2026 23:20:33 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 26 Oct 2026 23:20:33 GMT
USER root
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6d030616d050b47ea9cb92177c2c6da6093909d35d25aebfa79cf631565d94e`  
		Last Modified: Mon, 26 Oct 2026 23:21:06 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cf7c9876478d9b5821bde05f609ec141aa9f57a2857b471c16e5b70b2c0e3a8`  
		Last Modified: Mon, 26 Oct 2026 23:21:13 GMT  
		Size: 143.4 MB (143439348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:143d2ae3eb321e8984788ac1995b0c10212de5657b4fd7ff92bcb1d06c3e6f1d`  
		Last Modified: Mon, 26 Oct 2026 23:21:16 GMT  
		Size: 296.4 MB (296362895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15527654b21bf252d039e939cf29b40cbe3ecd5aad69a25ed719027440b40fbb`  
		Last Modified: Mon, 26 Oct 2026 23:21:13 GMT  
		Size: 151.5 MB (151533523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5aae293674234f9e2a369f1121a9d0ffc64213b8f97e55e4a1a7725bda60f71d`  
		Last Modified: Mon, 26 Oct 2026 23:21:07 GMT  
		Size: 29.3 KB (29331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk17-graal-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:193fed7480a426a94334687722e5000b4bbb97a57fbf73afb4a9c8ac30c9ef15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 MB (9110773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70c65436ae338e7e7cc5fbc85764e17bf7acdc949a63989b813bf59e49e536b0`

```dockerfile
```

-	Layers:
	-	`sha256:757516d582079912fc2e7aa8ac93e4065286bf4a29f5780b8ba284ab3913870f`  
		Last Modified: Mon, 26 Oct 2026 23:21:07 GMT  
		Size: 9.1 MB (9082175 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2985658efaad7e52d30054e1fe6c9b3607846f73e32dd1a466a99bb40481c219`  
		Last Modified: Mon, 26 Oct 2026 23:21:06 GMT  
		Size: 28.6 KB (28598 bytes)  
		MIME: application/vnd.in-toto+json
