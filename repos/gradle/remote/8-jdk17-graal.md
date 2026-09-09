## `gradle:8-jdk17-graal`

```console
$ docker pull gradle@sha256:b94c08b1c5d262fcd734dead6fc8f96bd4742aae128f78424f37073cd08b4a0f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:8-jdk17-graal` - linux; amd64

```console
$ docker pull gradle@sha256:cb5321845a0ada605146415ecabf1fdd9558e5df0916791c2efff7715aa9c0c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **607.2 MB (607177128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a287951b5f188cb320a296d03f770dfbe8fd850f0d451eff1d1234dd1b974462`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 07 Sep 2026 06:58:02 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:58:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:58:02 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:04 GMT
ADD file:de4937ce3dfc7c89f05f1503c52434f0a631ac84995f0df65eed0754e5c97d48 in / 
# Mon, 07 Sep 2026 06:58:04 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:24:07 GMT
CMD ["gradle"]
# Wed, 09 Sep 2026 02:24:07 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 09 Sep 2026 02:24:07 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 09 Sep 2026 02:24:07 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 09 Sep 2026 02:24:07 GMT
WORKDIR /home/gradle
# Wed, 09 Sep 2026 02:24:40 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 09 Sep 2026 02:24:40 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Wed, 09 Sep 2026 02:24:40 GMT
ENV JAVA_VERSION=17.0.9
# Wed, 09 Sep 2026 02:24:49 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=e47ba7229cef02393e19d5b8f46f7f1cab4829dd17bfe84d5431fc8ff0e22a96     && GRAALVM_AARCH64_DOWNLOAD_SHA256=c3281b21f5220c2f76cf6fa0d646bc42e2d729af2c022bb06e557a613ba16102     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/jdk-${JAVA_VERSION}/graalvm-community-jdk-${JAVA_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && gu --version     && native-image --version # buildkit
# Wed, 09 Sep 2026 02:24:49 GMT
ENV GRADLE_VERSION=8.14.5
# Wed, 09 Sep 2026 02:24:49 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Wed, 09 Sep 2026 02:24:51 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 09 Sep 2026 02:24:51 GMT
USER gradle
# Wed, 09 Sep 2026 02:24:52 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 09 Sep 2026 02:24:52 GMT
USER root
```

-	Layers:
	-	`sha256:e51aee9c82ec5dd5ba2add49c45c6d85d460512757e2615b69bcdf9469c7cb58`  
		Last Modified: Mon, 07 Sep 2026 07:56:53 GMT  
		Size: 29.8 MB (29763253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba97495798148415f7265c394930355f654fa7c12c52c4819787fd08a4165ccd`  
		Last Modified: Wed, 09 Sep 2026 02:25:25 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a2b0f623799c180a530abbc0a2f92d85668d54cb77897c17028201f2b09dc04`  
		Last Modified: Wed, 09 Sep 2026 02:25:32 GMT  
		Size: 148.2 MB (148224771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b5a2b9bebc2a28aeba7a12d5b0c42ec082c6cb60aa2ec1e0debd620d8611b50`  
		Last Modified: Wed, 09 Sep 2026 02:25:36 GMT  
		Size: 291.1 MB (291064308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9fbcf8c91fe9d39da512c7bbf846c8743199e67447cddce819043d29b694d95`  
		Last Modified: Wed, 09 Sep 2026 02:25:32 GMT  
		Size: 138.1 MB (138068572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b144eac3b770cf703eb764caf86c835a1d0545a9172b4cf046a8338de22da8b`  
		Last Modified: Wed, 09 Sep 2026 02:25:27 GMT  
		Size: 54.9 KB (54906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk17-graal` - unknown; unknown

```console
$ docker pull gradle@sha256:fce1ed67477b3afdf9d0b7faa67c756e7b8ad6a7ebf7e89622e55046d83aa9c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.0 MB (9021214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c35bcd75a4b7c8987410a76bc4cfae55a2c59c35bd3cdf20d6b26a3cd017e0a`

```dockerfile
```

-	Layers:
	-	`sha256:e7254d1e85434dc699b3c7893b5476c45cf6ff473647f38e65efde3de3e7ea6b`  
		Last Modified: Wed, 09 Sep 2026 02:25:26 GMT  
		Size: 9.0 MB (8992780 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ea73783c5627d21a3eb83f49ca189dcaf75d91ed986d96e0a2f8c4d57a6ed5a`  
		Last Modified: Wed, 09 Sep 2026 02:25:25 GMT  
		Size: 28.4 KB (28434 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:8-jdk17-graal` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:d5ae66bdaa54acf2d254368c301fec8ae4afd190f1b6f140d84f1bdaa48a140a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **593.9 MB (593907836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9cacdc169af4966be41fc42e5854a09e69c08c32c4403b04464dac3bc9e9db6`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 07 Sep 2026 06:57:57 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:57:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:57:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:01 GMT
ADD file:06e064cbfe0750594affea730437107320bdf1e36232c304b900eaa55f88a633 in / 
# Mon, 07 Sep 2026 06:58:01 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:21:09 GMT
CMD ["gradle"]
# Wed, 09 Sep 2026 02:21:09 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 09 Sep 2026 02:21:09 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 09 Sep 2026 02:21:09 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 09 Sep 2026 02:21:09 GMT
WORKDIR /home/gradle
# Wed, 09 Sep 2026 02:21:45 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 09 Sep 2026 02:21:45 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Wed, 09 Sep 2026 02:21:45 GMT
ENV JAVA_VERSION=17.0.9
# Wed, 09 Sep 2026 02:21:55 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=e47ba7229cef02393e19d5b8f46f7f1cab4829dd17bfe84d5431fc8ff0e22a96     && GRAALVM_AARCH64_DOWNLOAD_SHA256=c3281b21f5220c2f76cf6fa0d646bc42e2d729af2c022bb06e557a613ba16102     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/jdk-${JAVA_VERSION}/graalvm-community-jdk-${JAVA_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && gu --version     && native-image --version # buildkit
# Wed, 09 Sep 2026 02:21:55 GMT
ENV GRADLE_VERSION=8.14.5
# Wed, 09 Sep 2026 02:21:55 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Wed, 09 Sep 2026 02:21:57 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 09 Sep 2026 02:21:57 GMT
USER gradle
# Wed, 09 Sep 2026 02:21:58 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 09 Sep 2026 02:21:58 GMT
USER root
```

-	Layers:
	-	`sha256:9332cde1e07015fd0f14e769fc74ea901a957e3f62a76de66638f99854867dd2`  
		Last Modified: Mon, 07 Sep 2026 07:57:03 GMT  
		Size: 28.9 MB (28940015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8dfebee0e7cacea94e9943e192dddafd5c6995e1e4a71c543263048d8b9ebeb`  
		Last Modified: Wed, 09 Sep 2026 02:22:30 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51a450e9fb1ec6b7c6eeb057ef8ffcf3501b408f9c5b16c6342432967a9b68c3`  
		Last Modified: Wed, 09 Sep 2026 02:22:39 GMT  
		Size: 143.3 MB (143336596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c690f9fc2fdab3c3d018b8ba77bad4377266981854787d9acb571b0a1439814`  
		Last Modified: Wed, 09 Sep 2026 02:22:42 GMT  
		Size: 283.5 MB (283501838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7430b042fd5dd6728053b170097bf82a755dc02f1f17d5cb83d6015370c5f0d`  
		Last Modified: Wed, 09 Sep 2026 02:22:39 GMT  
		Size: 138.1 MB (138068535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7aebaa837a671a426831fa3237b3fd02229dbd2dddce4076622c06382ab110d4`  
		Last Modified: Wed, 09 Sep 2026 02:22:31 GMT  
		Size: 59.5 KB (59533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk17-graal` - unknown; unknown

```console
$ docker pull gradle@sha256:6250ad69978f5a850cfad051601312cc2029032e1ecce4e7589417c65a4927ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.0 MB (9016955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dda420edff6767f7e84f30d12fe30bfb89a2e5aac2d5dc4aa34b4c43944c9918`

```dockerfile
```

-	Layers:
	-	`sha256:50e1680648074188f31fe5362eb4b6792711b435a6f6603658edfeaf57f0bd1c`  
		Last Modified: Wed, 09 Sep 2026 02:22:31 GMT  
		Size: 9.0 MB (8988333 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:84c21d0766b7ea4fd27ef90e99b4e2b53ed46abf4a55ced01d95c94df6b3a3bd`  
		Last Modified: Wed, 09 Sep 2026 02:22:30 GMT  
		Size: 28.6 KB (28622 bytes)  
		MIME: application/vnd.in-toto+json
