## `gradle:8-jdk17-graal-noble`

```console
$ docker pull gradle@sha256:6ee24e71884b56d717f351f6b792ade59f00054827bead6264479fb0ee8c4bad
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:8-jdk17-graal-noble` - linux; amd64

```console
$ docker pull gradle@sha256:bfa6a7749f5405ca21649f27e6a311daf207fb4189ad42dded5af5aab1ffe700
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **619.4 MB (619439038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5120ebbcfcb18311b55646de944c20ce8a885751cb967cefa96ace3411943e2`
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
# Mon, 26 Oct 2026 23:14:31 GMT
CMD ["gradle"]
# Mon, 26 Oct 2026 23:14:31 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 26 Oct 2026 23:14:31 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Mon, 26 Oct 2026 23:14:31 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 26 Oct 2026 23:14:31 GMT
WORKDIR /home/gradle
# Mon, 26 Oct 2026 23:15:05 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Mon, 26 Oct 2026 23:15:05 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Mon, 26 Oct 2026 23:15:05 GMT
ENV JAVA_VERSION=17.0.20.1+2
# Mon, 26 Oct 2026 23:16:23 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading Liberica NIK"     && LIBERICA_NIK_AMD64_DOWNLOAD_SHA256=68019a5b3e51337e4a3db6ec6916a14b5c403769fa87dfb4798889be87c33448     && LIBERICA_NIK_AARCH64_DOWNLOAD_SHA256=20a0b93d552b8d0a22d8addf903aac0cf709bdcc87ee2312fe8900da51d0458a     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then LIBERICA_NIK_ARCHITECTURE=amd64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then LIBERICA_NIK_ARCHITECTURE=aarch64; fi     && LIBERICA_NIK_RELEASE_TAG=23.0.13.1+1-17.0.20.1+2     && LIBERICA_NIK_VERSION=23.0.13.1+1     && LIBERICA_NIK_PKG=https://github.com/bell-sw/LibericaNIK/releases/download/${LIBERICA_NIK_RELEASE_TAG}/bellsoft-liberica-vm-openjdk${JAVA_VERSION}-${LIBERICA_NIK_VERSION}-linux-${LIBERICA_NIK_ARCHITECTURE}.tar.gz     && wget --no-verbose --output-document=liberica-nik.tar.gz "${LIBERICA_NIK_PKG}"         && echo "Checking Liberica NIK download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then LIBERICA_NIK_DOWNLOAD_SHA256="${LIBERICA_NIK_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then LIBERICA_NIK_DOWNLOAD_SHA256="${LIBERICA_NIK_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${LIBERICA_NIK_DOWNLOAD_SHA256} *liberica-nik.tar.gz" | sha256sum --check -         && echo "Installing Liberica NIK"     && mkdir "${JAVA_HOME}"     && tar --extract --gunzip --file liberica-nik.tar.gz --strip-components=1 --directory "${JAVA_HOME}"     && rm liberica-nik.tar.gz     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing Liberica NIK installation"     && java --version     && javac --version     && native-image --version # buildkit
# Mon, 26 Oct 2026 23:16:23 GMT
ENV GRADLE_VERSION=8.14.6
# Mon, 26 Oct 2026 23:16:23 GMT
ARG GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
# Mon, 26 Oct 2026 23:16:25 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 26 Oct 2026 23:16:25 GMT
USER gradle
# Mon, 26 Oct 2026 23:16:26 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 26 Oct 2026 23:16:26 GMT
USER root
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30d5bb09ca45f9e8fc080190380d7cc121ebb8c847dd0ad849a8c004ef6b84b6`  
		Last Modified: Mon, 26 Oct 2026 23:15:55 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c518a3957cf2f80f255ba4a2666025f3eea3b7d22a83a34ea33515ff8000ef54`  
		Last Modified: Mon, 26 Oct 2026 23:16:03 GMT  
		Size: 148.3 MB (148331937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09365676faba98ce25c5d209f5c95c9c05fca2b990060a6561d751d7299dcd7a`  
		Last Modified: Mon, 26 Oct 2026 23:17:02 GMT  
		Size: 301.9 MB (301855919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9151de7cc7d15d4499858d0d8778748cb3dd016ee8202213a6ac5e0f4b4ed8e`  
		Last Modified: Mon, 26 Oct 2026 23:16:59 GMT  
		Size: 139.4 MB (139427345 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96872974d1d5e5cb8569e242caf2506c051b942bf07d879a71281a8664eef5ba`  
		Last Modified: Mon, 26 Oct 2026 23:16:55 GMT  
		Size: 54.9 KB (54905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk17-graal-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:33b63c8856ca7b28bdd18a579630166f433eed97b1def09f665a8deb0ed52653
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 MB (9059038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ce1f7a472fe395ebfc0a6bdf7b5bf0924cf1a5c6708a41f7feb7eee20741434`

```dockerfile
```

-	Layers:
	-	`sha256:a28b5c3aad1fecf5bda59a2c1a56e4e7889a3e05e7463df7a2a77e68a60d73ce`  
		Last Modified: Mon, 26 Oct 2026 23:16:55 GMT  
		Size: 9.0 MB (9029962 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f98a61dabebae869f66672b78de0ed21920ec5233dc2463866bb27c27086b6f`  
		Last Modified: Mon, 26 Oct 2026 23:16:55 GMT  
		Size: 29.1 KB (29076 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:8-jdk17-graal-noble` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:8b761a56eba37c85f9c8174ddbafa54f0d5314349c74530561d1e0e97675caac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **608.2 MB (608229925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a9623b9442885211691a79287651057ef19b7ab0b489a4a33c3680d40c43359`
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
# Mon, 26 Oct 2026 23:19:07 GMT
CMD ["gradle"]
# Mon, 26 Oct 2026 23:19:07 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 26 Oct 2026 23:19:07 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Mon, 26 Oct 2026 23:19:07 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 26 Oct 2026 23:19:07 GMT
WORKDIR /home/gradle
# Mon, 26 Oct 2026 23:19:42 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Mon, 26 Oct 2026 23:19:42 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Mon, 26 Oct 2026 23:19:42 GMT
ENV JAVA_VERSION=17.0.20.1+2
# Mon, 26 Oct 2026 23:21:08 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading Liberica NIK"     && LIBERICA_NIK_AMD64_DOWNLOAD_SHA256=68019a5b3e51337e4a3db6ec6916a14b5c403769fa87dfb4798889be87c33448     && LIBERICA_NIK_AARCH64_DOWNLOAD_SHA256=20a0b93d552b8d0a22d8addf903aac0cf709bdcc87ee2312fe8900da51d0458a     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then LIBERICA_NIK_ARCHITECTURE=amd64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then LIBERICA_NIK_ARCHITECTURE=aarch64; fi     && LIBERICA_NIK_RELEASE_TAG=23.0.13.1+1-17.0.20.1+2     && LIBERICA_NIK_VERSION=23.0.13.1+1     && LIBERICA_NIK_PKG=https://github.com/bell-sw/LibericaNIK/releases/download/${LIBERICA_NIK_RELEASE_TAG}/bellsoft-liberica-vm-openjdk${JAVA_VERSION}-${LIBERICA_NIK_VERSION}-linux-${LIBERICA_NIK_ARCHITECTURE}.tar.gz     && wget --no-verbose --output-document=liberica-nik.tar.gz "${LIBERICA_NIK_PKG}"         && echo "Checking Liberica NIK download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then LIBERICA_NIK_DOWNLOAD_SHA256="${LIBERICA_NIK_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then LIBERICA_NIK_DOWNLOAD_SHA256="${LIBERICA_NIK_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${LIBERICA_NIK_DOWNLOAD_SHA256} *liberica-nik.tar.gz" | sha256sum --check -         && echo "Installing Liberica NIK"     && mkdir "${JAVA_HOME}"     && tar --extract --gunzip --file liberica-nik.tar.gz --strip-components=1 --directory "${JAVA_HOME}"     && rm liberica-nik.tar.gz     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing Liberica NIK installation"     && java --version     && javac --version     && native-image --version # buildkit
# Mon, 26 Oct 2026 23:21:08 GMT
ENV GRADLE_VERSION=8.14.6
# Mon, 26 Oct 2026 23:21:08 GMT
ARG GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
# Mon, 26 Oct 2026 23:21:10 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 26 Oct 2026 23:21:10 GMT
USER gradle
# Mon, 26 Oct 2026 23:21:11 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 26 Oct 2026 23:21:11 GMT
USER root
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25607c83d7f8f6359fa39a3602831dc1bf327130a1b7a78550c278a47a774bec`  
		Last Modified: Mon, 26 Oct 2026 23:20:38 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f70c61c7da67b1d536d879baa4000bbe6dfcb3ed2d4399a00dedbd3cc447e67c`  
		Last Modified: Mon, 26 Oct 2026 23:20:46 GMT  
		Size: 143.4 MB (143438747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be0aea4ec64c65c513c97bf282cb22277cd1d085b6d32f017db13a8b8a5a5bb6`  
		Last Modified: Mon, 26 Oct 2026 23:21:51 GMT  
		Size: 296.4 MB (296362853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b474ac2cf2037290cf05d1c1105aa1daa254b2f3c888c7c43ad1d239f0fca128`  
		Last Modified: Mon, 26 Oct 2026 23:21:48 GMT  
		Size: 139.4 MB (139427344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e08fbd71051f5b5c6f204e4fdb9c0664650a6c2b917e5c6a222bae7dc4314fb`  
		Last Modified: Mon, 26 Oct 2026 23:21:43 GMT  
		Size: 59.5 KB (59536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk17-graal-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:9f70556128c6ed90ce26ce817f80bd7185cc164253cf98b7fde11e4ee447bf41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 MB (9079309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b40201272b13664a356da380cdaab9d13c5cf77983199a2bca3f318c5c540bc`

```dockerfile
```

-	Layers:
	-	`sha256:3f2bc9f618c2d9e8068f1d5df7e7e9d199db528aedb56fbfdb7966fe5dd12087`  
		Last Modified: Mon, 26 Oct 2026 23:21:43 GMT  
		Size: 9.1 MB (9050045 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:859e47cabcfa7c8d1d41e996972038b736a4b51ab80c0a7cf72086fbcba361b5`  
		Last Modified: Mon, 26 Oct 2026 23:21:43 GMT  
		Size: 29.3 KB (29264 bytes)  
		MIME: application/vnd.in-toto+json
