## `gradle:8-jdk17-graal`

```console
$ docker pull gradle@sha256:c0bf32ed6e7cfc49ee0ed4f70a7f63ea6cbecb83e4f4bdd059319a3e3c215fad
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:8-jdk17-graal` - linux; amd64

```console
$ docker pull gradle@sha256:a5bf39654ac683a800b094e0d637d9b1081de52f2febcdce036dd6b106edc081
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **626.3 MB (626290122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bae1d92ab4a88cdaf2b3b0cb3fd8242d6a67ef61c2c2710d9e4634babfea14d4`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:17:41 GMT
CMD ["gradle"]
# Fri, 20 Nov 2026 03:17:41 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 20 Nov 2026 03:17:41 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 20 Nov 2026 03:17:41 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 20 Nov 2026 03:17:41 GMT
WORKDIR /home/gradle
# Fri, 20 Nov 2026 03:18:07 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 20 Nov 2026 03:18:07 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Fri, 20 Nov 2026 03:18:07 GMT
ENV JAVA_VERSION=17.0.21.0.3+6
# Fri, 20 Nov 2026 03:18:20 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading Liberica NIK"     && LIBERICA_NIK_AMD64_DOWNLOAD_SHA256=0e6b739f30701397534bd75119d2ede5ffad0dc7b26d48d6c28e7aa88f8cde30     && LIBERICA_NIK_AARCH64_DOWNLOAD_SHA256=fd0b2796c7cfba8f1425e4c77d5a2043e0504b4e59b87a0d8a6eddf440aeea3c     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then LIBERICA_NIK_ARCHITECTURE=amd64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then LIBERICA_NIK_ARCHITECTURE=aarch64; fi     && LIBERICA_NIK_RELEASE_TAG=23.0.14+1-17.0.21.0.3+6     && LIBERICA_NIK_VERSION=23.0.14+1     && LIBERICA_NIK_PKG=https://github.com/bell-sw/LibericaNIK/releases/download/${LIBERICA_NIK_RELEASE_TAG}/bellsoft-liberica-vm-openjdk${JAVA_VERSION}-${LIBERICA_NIK_VERSION}-linux-${LIBERICA_NIK_ARCHITECTURE}.tar.gz     && wget --no-verbose --output-document=liberica-nik.tar.gz "${LIBERICA_NIK_PKG}"         && echo "Checking Liberica NIK download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then LIBERICA_NIK_DOWNLOAD_SHA256="${LIBERICA_NIK_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then LIBERICA_NIK_DOWNLOAD_SHA256="${LIBERICA_NIK_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${LIBERICA_NIK_DOWNLOAD_SHA256} *liberica-nik.tar.gz" | sha256sum --check -         && echo "Installing Liberica NIK"     && mkdir "${JAVA_HOME}"     && tar --extract --gunzip --file liberica-nik.tar.gz --strip-components=1 --directory "${JAVA_HOME}"     && rm liberica-nik.tar.gz     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing Liberica NIK installation"     && java --version     && javac --version     && native-image --version # buildkit
# Fri, 20 Nov 2026 03:18:20 GMT
ENV GRADLE_VERSION=8.14.7
# Fri, 20 Nov 2026 03:18:20 GMT
ARG GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
# Fri, 20 Nov 2026 03:18:24 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 20 Nov 2026 03:18:24 GMT
USER gradle
# Fri, 20 Nov 2026 03:18:24 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 20 Nov 2026 03:18:24 GMT
USER root
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faa5c192247438e870144a91f225a4d5780b9270d88014ad072abcceb9b3c961`  
		Last Modified: Fri, 20 Nov 2026 03:18:59 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce19a0eebace161006feaebc16439fcca2dfe314bbf0293a822fad475fe17bd9`  
		Last Modified: Fri, 20 Nov 2026 03:19:06 GMT  
		Size: 154.6 MB (154551756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:809b6335d64e647ed2e07b652166f2175a943ce2250422b9d6ffc7877293f8b5`  
		Last Modified: Fri, 20 Nov 2026 03:19:09 GMT  
		Size: 302.5 MB (302456946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a05addb4cdb9cddad2336605c9af70722caeb6c4cfd012bd3c0ed90f5d8489e0`  
		Last Modified: Fri, 20 Nov 2026 03:19:05 GMT  
		Size: 139.4 MB (139431907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15836ee723a24ff18d53c0bb578a6d2be5821dea763b9411e77582a626bed06d`  
		Last Modified: Fri, 20 Nov 2026 03:19:00 GMT  
		Size: 54.9 KB (54893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk17-graal` - unknown; unknown

```console
$ docker pull gradle@sha256:b4182d1c784d76961c99691ef885508e327f6d3b15cf861b87edaa92d94bd44a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 MB (9059664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce16ce14b189a72449b5a801f76d81b79c8e49f626fd0e3c34a279d5d7deb63f`

```dockerfile
```

-	Layers:
	-	`sha256:fff619317889eb48ced681fb5ce4f20e138608d5d6f419dec944dacb2ea7f63e`  
		Last Modified: Fri, 20 Nov 2026 03:18:59 GMT  
		Size: 9.0 MB (9030586 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69de742c58bc929f4328bead5001f47b67674cd23a435019e0f5764b92b4ce8a`  
		Last Modified: Fri, 20 Nov 2026 03:18:59 GMT  
		Size: 29.1 KB (29078 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:8-jdk17-graal` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:bd6b3a220ba0f57aae958a9915c82fdb908a540256ee7901f9440bf0dbee1a8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **614.9 MB (614856737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3765e340b2c113a94ef9599880d29344f87d392a467ef3e9c209ef8dc52188f0`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:18:25 GMT
CMD ["gradle"]
# Fri, 20 Nov 2026 03:18:25 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 20 Nov 2026 03:18:25 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 20 Nov 2026 03:18:25 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 20 Nov 2026 03:18:25 GMT
WORKDIR /home/gradle
# Fri, 20 Nov 2026 03:18:54 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 20 Nov 2026 03:18:54 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Fri, 20 Nov 2026 03:18:54 GMT
ENV JAVA_VERSION=17.0.21.0.3+6
# Fri, 20 Nov 2026 03:19:05 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading Liberica NIK"     && LIBERICA_NIK_AMD64_DOWNLOAD_SHA256=0e6b739f30701397534bd75119d2ede5ffad0dc7b26d48d6c28e7aa88f8cde30     && LIBERICA_NIK_AARCH64_DOWNLOAD_SHA256=fd0b2796c7cfba8f1425e4c77d5a2043e0504b4e59b87a0d8a6eddf440aeea3c     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then LIBERICA_NIK_ARCHITECTURE=amd64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then LIBERICA_NIK_ARCHITECTURE=aarch64; fi     && LIBERICA_NIK_RELEASE_TAG=23.0.14+1-17.0.21.0.3+6     && LIBERICA_NIK_VERSION=23.0.14+1     && LIBERICA_NIK_PKG=https://github.com/bell-sw/LibericaNIK/releases/download/${LIBERICA_NIK_RELEASE_TAG}/bellsoft-liberica-vm-openjdk${JAVA_VERSION}-${LIBERICA_NIK_VERSION}-linux-${LIBERICA_NIK_ARCHITECTURE}.tar.gz     && wget --no-verbose --output-document=liberica-nik.tar.gz "${LIBERICA_NIK_PKG}"         && echo "Checking Liberica NIK download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then LIBERICA_NIK_DOWNLOAD_SHA256="${LIBERICA_NIK_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then LIBERICA_NIK_DOWNLOAD_SHA256="${LIBERICA_NIK_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${LIBERICA_NIK_DOWNLOAD_SHA256} *liberica-nik.tar.gz" | sha256sum --check -         && echo "Installing Liberica NIK"     && mkdir "${JAVA_HOME}"     && tar --extract --gunzip --file liberica-nik.tar.gz --strip-components=1 --directory "${JAVA_HOME}"     && rm liberica-nik.tar.gz     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing Liberica NIK installation"     && java --version     && javac --version     && native-image --version # buildkit
# Fri, 20 Nov 2026 03:19:05 GMT
ENV GRADLE_VERSION=8.14.7
# Fri, 20 Nov 2026 03:19:05 GMT
ARG GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
# Fri, 20 Nov 2026 03:19:08 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 20 Nov 2026 03:19:08 GMT
USER gradle
# Fri, 20 Nov 2026 03:19:09 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 20 Nov 2026 03:19:09 GMT
USER root
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4043d1f6659e8619aa942c81612ecdc6fbc832809fb530c9879f117475581a56`  
		Last Modified: Fri, 20 Nov 2026 03:19:42 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a865fc17a19a8757b76a1c6837634db846fa7f8c48b4ac445e69d5b231b55bd`  
		Last Modified: Fri, 20 Nov 2026 03:19:49 GMT  
		Size: 149.4 MB (149413570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a86ca0a64b068bfec63d2ace201a75aabd74b12e6b2cbe7b282f8c833fde5d77`  
		Last Modified: Fri, 20 Nov 2026 03:19:52 GMT  
		Size: 297.0 MB (296985068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a836613b1decfa6efc89a5e9e2e62d1394c455f8f17e3aadf73d04a017feb8c`  
		Last Modified: Fri, 20 Nov 2026 03:19:49 GMT  
		Size: 139.4 MB (139431918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c68b6c4cf72b06a9b897b66748cef12735b420073a8750220284e9d5ef93f93e`  
		Last Modified: Fri, 20 Nov 2026 03:19:44 GMT  
		Size: 59.5 KB (59548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk17-graal` - unknown; unknown

```console
$ docker pull gradle@sha256:552ceff4843beed2aa51c06c1ffd1da2663e72f16d8939b8c685b13ffd2c42e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 MB (9079937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:396aba12b1fd66ce5dcf6fd03bc51548d31e20562824c22e743102b243f90f4b`

```dockerfile
```

-	Layers:
	-	`sha256:7477bbf98c9dca61259a3ffc680b5ac6853ca30cbb07b4a87b9211877c94201b`  
		Last Modified: Fri, 20 Nov 2026 03:19:43 GMT  
		Size: 9.1 MB (9050669 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c030d2179c83bec4f1be720fc159ced75224766ddbb696c5195bb1f91385fabc`  
		Last Modified: Fri, 20 Nov 2026 03:19:42 GMT  
		Size: 29.3 KB (29268 bytes)  
		MIME: application/vnd.in-toto+json
