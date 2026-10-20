## `gradle:9-jdk21-graal-noble`

```console
$ docker pull gradle@sha256:09131bcf6e002368ee8688ca37c5b50824d29346b7830dfa0d51dca3e9a93082
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:9-jdk21-graal-noble` - linux; amd64

```console
$ docker pull gradle@sha256:fbe4e364b6126a574ed275c6220cc5453d8fe0dc48c6c74c1f75fa1bb9d3ce3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **619.6 MB (619644079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04a8ce451041fc19d67ef6ec65d465e3040f518e64df8b668dfea2a776226ab3`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:52 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:54 GMT
ADD file:7121eb4a5ba391efb4ba9a38c532d1c5dc2d22d276f04e062f357eea36ee62c4 in / 
# Fri, 02 Oct 2026 08:10:55 GMT
CMD ["/bin/bash"]
# Tue, 20 Oct 2026 17:52:02 GMT
CMD ["gradle"]
# Tue, 20 Oct 2026 17:52:02 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 20 Oct 2026 17:52:02 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 20 Oct 2026 17:52:02 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 20 Oct 2026 17:52:02 GMT
WORKDIR /home/gradle
# Tue, 20 Oct 2026 17:52:31 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 20 Oct 2026 17:52:31 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Tue, 20 Oct 2026 17:52:31 GMT
ENV JAVA_VERSION=21.0.2
# Tue, 20 Oct 2026 17:52:40 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=b048069aaa3a99b84f5b957b162cc181a32a4330cbc35402766363c5be76ae48     && GRAALVM_AARCH64_DOWNLOAD_SHA256=a34be691ce68f0acf4655c7c6c63a9a49ed276a11859d7224fd94fc2f657cd7a     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/jdk-${JAVA_VERSION}/graalvm-community-jdk-${JAVA_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && native-image --version # buildkit
# Tue, 20 Oct 2026 17:52:40 GMT
ENV GRADLE_VERSION=9.8.2
# Tue, 20 Oct 2026 17:52:40 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Tue, 20 Oct 2026 17:52:43 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 20 Oct 2026 17:52:43 GMT
USER gradle
# Tue, 20 Oct 2026 17:52:44 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 20 Oct 2026 17:52:44 GMT
USER root
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a9fabc171b1e02ee2a86297a89dcd37ddeb4f48d7190eef81ef4ae9aa5a9b31`  
		Last Modified: Tue, 20 Oct 2026 17:53:18 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe5a22ef7c0f8bd9b8a1f8cf760e14150ea8eb3aa4f60ed6cb7a10f08cda1017`  
		Last Modified: Tue, 20 Oct 2026 17:53:27 GMT  
		Size: 148.3 MB (148331693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db48a94df9f5476a1da031b151e1f0a28277076f5269503eab3bd531878e2e96`  
		Last Modified: Tue, 20 Oct 2026 17:53:30 GMT  
		Size: 290.0 MB (289986088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b83ad4eccc815d03b257130eda4be5050848a53dfec73bee176bc9c849f2053`  
		Last Modified: Tue, 20 Oct 2026 17:53:28 GMT  
		Size: 151.5 MB (151533614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af3a7de65a5b056617d63b826911d40d1bb98fda439376999d94c6b76cffdc57`  
		Last Modified: Tue, 20 Oct 2026 17:53:19 GMT  
		Size: 25.6 KB (25608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk21-graal-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:23082feeb146ddb405c3503dc7cf8aee6dbea6a37a95d138e2fdf6772f247730
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.0 MB (9027928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1aac00fd1faad23c70a908c62da4cf6aa2932bdf69647ad7602f68567331fabd`

```dockerfile
```

-	Layers:
	-	`sha256:2af631ddef72395ea790d4683d48c02b946099aa3268e6b91efb4abf22fa3b3f`  
		Last Modified: Tue, 20 Oct 2026 17:53:18 GMT  
		Size: 9.0 MB (9000236 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3c1b35373e8f84d1122920d65de43278fe5f299d32de1b70d6a97b9aab64809c`  
		Last Modified: Tue, 20 Oct 2026 17:53:17 GMT  
		Size: 27.7 KB (27692 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk21-graal-noble` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:d0e20355637028208efa00beb2d8b83e98574c22436220aba2fb8d7a0cdf6413
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **605.6 MB (605608836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1180a5a6fcfbd744af499ac1f142d32711886d4a7003ae80e251df55dee4f99`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:23 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:23 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:25 GMT
ADD file:41d2e63ceb0b90641106340bc81ee11125254db51ee5a9d49e666bcf0388814f in / 
# Fri, 02 Oct 2026 08:10:26 GMT
CMD ["/bin/bash"]
# Tue, 20 Oct 2026 17:54:20 GMT
CMD ["gradle"]
# Tue, 20 Oct 2026 17:54:20 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 20 Oct 2026 17:54:20 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 20 Oct 2026 17:54:20 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 20 Oct 2026 17:54:20 GMT
WORKDIR /home/gradle
# Tue, 20 Oct 2026 17:54:58 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 20 Oct 2026 17:54:58 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Tue, 20 Oct 2026 17:54:58 GMT
ENV JAVA_VERSION=21.0.2
# Tue, 20 Oct 2026 17:55:06 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=b048069aaa3a99b84f5b957b162cc181a32a4330cbc35402766363c5be76ae48     && GRAALVM_AARCH64_DOWNLOAD_SHA256=a34be691ce68f0acf4655c7c6c63a9a49ed276a11859d7224fd94fc2f657cd7a     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/jdk-${JAVA_VERSION}/graalvm-community-jdk-${JAVA_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && native-image --version # buildkit
# Tue, 20 Oct 2026 17:55:06 GMT
ENV GRADLE_VERSION=9.8.2
# Tue, 20 Oct 2026 17:55:06 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Tue, 20 Oct 2026 17:55:09 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 20 Oct 2026 17:55:09 GMT
USER gradle
# Tue, 20 Oct 2026 17:55:09 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 20 Oct 2026 17:55:09 GMT
USER root
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70417f117c54671e748b59ebbdda72bf737a7b105a9b685601d0f6a5353ec443`  
		Last Modified: Tue, 20 Oct 2026 17:55:43 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80fa58497afca432628218f46e4379afdee5dd52dead2b884496b2cdd188f2ca`  
		Last Modified: Tue, 20 Oct 2026 17:55:52 GMT  
		Size: 143.4 MB (143438501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cbc8811d2f13851c19db601bf26c2d53985055cf6628cc84aa00d7d0ae142e9`  
		Last Modified: Tue, 20 Oct 2026 17:55:56 GMT  
		Size: 281.7 MB (281666311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71426d275a8e652bbc971d15b444570b9663e522363b212a7565270a98501812`  
		Last Modified: Tue, 20 Oct 2026 17:55:52 GMT  
		Size: 151.5 MB (151533614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec970f374ffc8a595b89275e47f58565e0cb488b551507bc1ceeec5b993af0d7`  
		Last Modified: Tue, 20 Oct 2026 17:55:44 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk21-graal-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:ea2ae92baa1fce466ced0f604aa7e8e2c49e07580a495ba7702549880e72f58b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.0 MB (9023625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89560cf261ac33f8ca9c467d81538fe1d529e61e3e52f2465e8bc33b5e7b6a66`

```dockerfile
```

-	Layers:
	-	`sha256:7eb4a5b1ebe6ec511602a7275789640aa0a018f524b690d43ee17aec249e746c`  
		Last Modified: Tue, 20 Oct 2026 17:55:43 GMT  
		Size: 9.0 MB (8995769 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c2733a5199287604aa8633db6ce66ba6912c4b08b0a20945c6122a95e5b286b`  
		Last Modified: Tue, 20 Oct 2026 17:55:43 GMT  
		Size: 27.9 KB (27856 bytes)  
		MIME: application/vnd.in-toto+json
