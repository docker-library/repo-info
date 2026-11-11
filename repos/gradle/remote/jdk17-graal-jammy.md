## `gradle:jdk17-graal-jammy`

```console
$ docker pull gradle@sha256:a195e76c35e3a933970c1e0f7248925a07fc775e6095bd5e2e9d51bbd3192a48
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:jdk17-graal-jammy` - linux; amd64

```console
$ docker pull gradle@sha256:010984d8da44cfc743efcb21bf7183353c29e92dc56aa1416fba62f8266ac852
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **596.2 MB (596207575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce2d897b4faa7644d71584d581cfc74cb7aec88b79a6e5449ab695b6f88660f1`
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
# Wed, 11 Nov 2026 20:13:04 GMT
CMD ["gradle"]
# Wed, 11 Nov 2026 20:13:04 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 11 Nov 2026 20:13:04 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 11 Nov 2026 20:13:04 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 11 Nov 2026 20:13:04 GMT
WORKDIR /home/gradle
# Wed, 11 Nov 2026 20:13:29 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 11 Nov 2026 20:13:29 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Wed, 11 Nov 2026 20:13:29 GMT
ENV JAVA_VERSION=17.0.21.0.3+6
# Wed, 11 Nov 2026 20:13:40 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading Liberica NIK"     && LIBERICA_NIK_AMD64_DOWNLOAD_SHA256=0e6b739f30701397534bd75119d2ede5ffad0dc7b26d48d6c28e7aa88f8cde30     && LIBERICA_NIK_AARCH64_DOWNLOAD_SHA256=fd0b2796c7cfba8f1425e4c77d5a2043e0504b4e59b87a0d8a6eddf440aeea3c     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then LIBERICA_NIK_ARCHITECTURE=amd64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then LIBERICA_NIK_ARCHITECTURE=aarch64; fi     && LIBERICA_NIK_RELEASE_TAG=23.0.14+1-17.0.21.0.3+6     && LIBERICA_NIK_VERSION=23.0.14+1     && LIBERICA_NIK_PKG=https://github.com/bell-sw/LibericaNIK/releases/download/${LIBERICA_NIK_RELEASE_TAG}/bellsoft-liberica-vm-openjdk${JAVA_VERSION}-${LIBERICA_NIK_VERSION}-linux-${LIBERICA_NIK_ARCHITECTURE}.tar.gz     && wget --no-verbose --output-document=liberica-nik.tar.gz "${LIBERICA_NIK_PKG}"         && echo "Checking Liberica NIK download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then LIBERICA_NIK_DOWNLOAD_SHA256="${LIBERICA_NIK_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then LIBERICA_NIK_DOWNLOAD_SHA256="${LIBERICA_NIK_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${LIBERICA_NIK_DOWNLOAD_SHA256} *liberica-nik.tar.gz" | sha256sum --check -         && echo "Installing Liberica NIK"     && mkdir "${JAVA_HOME}"     && tar --extract --gunzip --file liberica-nik.tar.gz --strip-components=1 --directory "${JAVA_HOME}"     && rm liberica-nik.tar.gz     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing Liberica NIK installation"     && java --version     && javac --version     && native-image --version # buildkit
# Wed, 11 Nov 2026 20:13:40 GMT
ENV GRADLE_VERSION=9.9.1
# Wed, 11 Nov 2026 20:13:40 GMT
ARG GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
# Wed, 11 Nov 2026 20:13:43 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 11 Nov 2026 20:13:43 GMT
USER gradle
# Wed, 11 Nov 2026 20:13:43 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 11 Nov 2026 20:13:43 GMT
USER root
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feba26e8471a9248b82722adeed75576431d6c8a9bd679d13161755b1b179be1`  
		Last Modified: Wed, 11 Nov 2026 20:14:16 GMT  
		Size: 4.3 KB (4313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:438ca318064f923421c8464006886905456797197ed1def3612fa22d542b6d54`  
		Last Modified: Wed, 11 Nov 2026 20:14:23 GMT  
		Size: 129.1 MB (129146932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:100d129af1019b29706fb00773c7972f2f6347cea70663be04219c2828ccc78f`  
		Last Modified: Wed, 11 Nov 2026 20:14:26 GMT  
		Size: 302.5 MB (302457304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e487c531e62e087599a4abe73792c55bd69c9073e965cb88c5c3285593ccd2d3`  
		Last Modified: Wed, 11 Nov 2026 20:14:24 GMT  
		Size: 134.8 MB (134820900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50cf4c1e075f750687421b4dfc4e6e6a7818fbedf260e9f490472aedbafcde1c`  
		Last Modified: Wed, 11 Nov 2026 20:14:17 GMT  
		Size: 25.6 KB (25606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk17-graal-jammy` - unknown; unknown

```console
$ docker pull gradle@sha256:f416e471a6566caaa1ba3635248b202aa4bb307b15e046814df204dbd794aa54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 MB (9487957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30d55b8d3c8a27f25c133b2abd464e14bbfadd713e03eacf17840d52b73260c8`

```dockerfile
```

-	Layers:
	-	`sha256:cad12c7d36bdebc0c7fba8becce7f1f5ed52373eb95ebe8ec0be4aee84455ee5`  
		Last Modified: Wed, 11 Nov 2026 20:14:17 GMT  
		Size: 9.5 MB (9459754 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4b0fb932e04d41a4f744f485410cb90fba612f4b68825c92f2e600fd3cf2c1b9`  
		Last Modified: Wed, 11 Nov 2026 20:14:16 GMT  
		Size: 28.2 KB (28203 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk17-graal-jammy` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:4db399370c110ca1425816b342ad1bb253627f5a3fa24a69704c77058d61aefd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **584.8 MB (584763716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fb6d5115b76f3a4e744b108c9bb65040f3ec69a5df7e0403700cdf0c4c6dff8`
-	Default Command: `["gradle"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:50 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:50 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:52 GMT
ADD file:6efa877f019ce1c165e045c546c059568465dad040d65f7797e1bbbf530bed3e in / 
# Sun, 25 Oct 2026 20:10:53 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 19:53:29 GMT
CMD ["gradle"]
# Wed, 11 Nov 2026 19:53:29 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 11 Nov 2026 19:53:29 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 11 Nov 2026 19:53:29 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 11 Nov 2026 19:53:29 GMT
WORKDIR /home/gradle
# Wed, 11 Nov 2026 19:53:55 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 11 Nov 2026 19:53:55 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Wed, 11 Nov 2026 19:53:55 GMT
ENV JAVA_VERSION=17.0.21.0.3+6
# Wed, 11 Nov 2026 19:54:05 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading Liberica NIK"     && LIBERICA_NIK_AMD64_DOWNLOAD_SHA256=0e6b739f30701397534bd75119d2ede5ffad0dc7b26d48d6c28e7aa88f8cde30     && LIBERICA_NIK_AARCH64_DOWNLOAD_SHA256=fd0b2796c7cfba8f1425e4c77d5a2043e0504b4e59b87a0d8a6eddf440aeea3c     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then LIBERICA_NIK_ARCHITECTURE=amd64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then LIBERICA_NIK_ARCHITECTURE=aarch64; fi     && LIBERICA_NIK_RELEASE_TAG=23.0.14+1-17.0.21.0.3+6     && LIBERICA_NIK_VERSION=23.0.14+1     && LIBERICA_NIK_PKG=https://github.com/bell-sw/LibericaNIK/releases/download/${LIBERICA_NIK_RELEASE_TAG}/bellsoft-liberica-vm-openjdk${JAVA_VERSION}-${LIBERICA_NIK_VERSION}-linux-${LIBERICA_NIK_ARCHITECTURE}.tar.gz     && wget --no-verbose --output-document=liberica-nik.tar.gz "${LIBERICA_NIK_PKG}"         && echo "Checking Liberica NIK download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then LIBERICA_NIK_DOWNLOAD_SHA256="${LIBERICA_NIK_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then LIBERICA_NIK_DOWNLOAD_SHA256="${LIBERICA_NIK_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${LIBERICA_NIK_DOWNLOAD_SHA256} *liberica-nik.tar.gz" | sha256sum --check -         && echo "Installing Liberica NIK"     && mkdir "${JAVA_HOME}"     && tar --extract --gunzip --file liberica-nik.tar.gz --strip-components=1 --directory "${JAVA_HOME}"     && rm liberica-nik.tar.gz     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing Liberica NIK installation"     && java --version     && javac --version     && native-image --version # buildkit
# Wed, 11 Nov 2026 19:54:05 GMT
ENV GRADLE_VERSION=9.9.1
# Wed, 11 Nov 2026 19:54:05 GMT
ARG GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
# Wed, 11 Nov 2026 19:54:07 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 11 Nov 2026 19:54:07 GMT
USER gradle
# Wed, 11 Nov 2026 19:54:08 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 11 Nov 2026 19:54:08 GMT
USER root
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47eccba973fea1fdaaae592c556a82a32d9f85fd77afde0cbf69266308cd9f96`  
		Last Modified: Wed, 11 Nov 2026 19:54:41 GMT  
		Size: 4.3 KB (4313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87f51cd9b1ce12c1ca8ad941dab99d8ee3490635e3e7812dbfbc0f8239ae185d`  
		Last Modified: Wed, 11 Nov 2026 19:54:48 GMT  
		Size: 125.2 MB (125239356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5d049d46c8df650bedd6ea0b9a23f7032728f2f2c8a9ede61b8d41338eadd2c`  
		Last Modified: Wed, 11 Nov 2026 19:54:51 GMT  
		Size: 297.0 MB (296985168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:785decda9993b9d7f4fe004da610b8c1d6f9c56e8059e3d4962fb5e14344cde2`  
		Last Modified: Wed, 11 Nov 2026 19:54:49 GMT  
		Size: 134.8 MB (134820902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad8c274c342d685cc2f12b4dfb5448c8f8995fcf5aebe376f4ad104b437a74bd`  
		Last Modified: Wed, 11 Nov 2026 19:54:43 GMT  
		Size: 29.3 KB (29338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk17-graal-jammy` - unknown; unknown

```console
$ docker pull gradle@sha256:18390d4c9d843a8f4c776d060367906608036562a4fb861c7cc04ebbfadfb22e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 MB (9481407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66698b91fa6d2e9ff6613fdb80c0b579fb002b7c3356e448f93779799be4d284`

```dockerfile
```

-	Layers:
	-	`sha256:5ee9c9c787312129a45d505ae7bc3a5d582015244e327b866f4a1d56b46503ca`  
		Last Modified: Wed, 11 Nov 2026 19:54:42 GMT  
		Size: 9.5 MB (9453040 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:215d58647dd2d86ee6802fea957e22cdb01d3d335df6d122ebd0b45e0b739f19`  
		Last Modified: Wed, 11 Nov 2026 19:54:41 GMT  
		Size: 28.4 KB (28367 bytes)  
		MIME: application/vnd.in-toto+json
