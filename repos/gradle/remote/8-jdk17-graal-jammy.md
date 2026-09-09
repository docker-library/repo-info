## `gradle:8-jdk17-graal-jammy`

```console
$ docker pull gradle@sha256:af495dbe766d399b33f29b87a8c5973b7e6c90567934fd07f4230f5db4a329d4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:8-jdk17-graal-jammy` - linux; amd64

```console
$ docker pull gradle@sha256:6ab4b9d00a532aa7b19e83ed09615fb1fe1b367b37cc259e4b06587b09c00898
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **593.2 MB (593196660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb88c2f401627b59ed82b735dd0735922f9daaa7df3fb0c2ad170e8a89720bcd`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:24:07 GMT
CMD ["gradle"]
# Wed, 09 Sep 2026 02:24:07 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 09 Sep 2026 02:24:07 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 09 Sep 2026 02:24:07 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 09 Sep 2026 02:24:07 GMT
WORKDIR /home/gradle
# Wed, 09 Sep 2026 02:24:45 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 09 Sep 2026 02:24:45 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Wed, 09 Sep 2026 02:24:45 GMT
ENV JAVA_VERSION=17.0.9
# Wed, 09 Sep 2026 02:24:55 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=e47ba7229cef02393e19d5b8f46f7f1cab4829dd17bfe84d5431fc8ff0e22a96     && GRAALVM_AARCH64_DOWNLOAD_SHA256=c3281b21f5220c2f76cf6fa0d646bc42e2d729af2c022bb06e557a613ba16102     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/jdk-${JAVA_VERSION}/graalvm-community-jdk-${JAVA_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && gu --version     && native-image --version # buildkit
# Wed, 09 Sep 2026 02:24:55 GMT
ENV GRADLE_VERSION=8.14.5
# Wed, 09 Sep 2026 02:24:55 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Wed, 09 Sep 2026 02:24:58 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 09 Sep 2026 02:24:58 GMT
USER gradle
# Wed, 09 Sep 2026 02:24:58 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 09 Sep 2026 02:24:58 GMT
USER root
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8444c670975eba7bc4ab34e7b22b5d882f5def0741232e3a5ef02d021a43d05`  
		Last Modified: Wed, 09 Sep 2026 02:25:32 GMT  
		Size: 4.3 KB (4311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df591e00360c47677cdf7311faf393f256e180528805c745f90f938e0456db90`  
		Last Modified: Wed, 09 Sep 2026 02:25:45 GMT  
		Size: 134.3 MB (134254471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb3172aaa7028bbafe8dc490cb8713da631e435ba11b041b97a0b82dc6d2cc0f`  
		Last Modified: Wed, 09 Sep 2026 02:25:56 GMT  
		Size: 291.1 MB (291064129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2919ac75ac122e32f63adef9afa78603fcd8682d0bf05cf6e650de2b7afb9a3`  
		Last Modified: Wed, 09 Sep 2026 02:25:46 GMT  
		Size: 138.1 MB (138068572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84daab3d2d587581713863238ba982b2a43f9f466a62f270678fa49dabc07738`  
		Last Modified: Wed, 09 Sep 2026 02:25:33 GMT  
		Size: 54.9 KB (54894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk17-graal-jammy` - unknown; unknown

```console
$ docker pull gradle@sha256:de2f9b38799d39a8088ef5584c1d1c6c07534465400507315d6cce070893d775
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 MB (9415336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c952753d92208da77f850eb5a873a80f369f2e788ebaae56c67ef71b18544d47`

```dockerfile
```

-	Layers:
	-	`sha256:0834a98579a7d95361094ae924de78fcb39f58c95207a212aeb4f874bcc06d4f`  
		Last Modified: Wed, 09 Sep 2026 02:25:32 GMT  
		Size: 9.4 MB (9388093 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e74b9dc2d0eaf3fec2da6c9d34da1b045368b9eac9f9d949eabd12a288b133d6`  
		Last Modified: Wed, 09 Sep 2026 02:25:32 GMT  
		Size: 27.2 KB (27243 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:8-jdk17-graal-jammy` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:a5cd934b1e42570f9a3fb7b3c8b8ce8551fca7f5e3768d8936db4f6f8bbd0b05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **578.6 MB (578581931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c42a4ca0f908ebf9b8ce35e85a24062c95a614435f1461f0dfaede810bac942`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 01:34:59 GMT
CMD ["gradle"]
# Wed, 09 Sep 2026 01:34:59 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 09 Sep 2026 01:34:59 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 09 Sep 2026 01:34:59 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 09 Sep 2026 01:34:59 GMT
WORKDIR /home/gradle
# Wed, 09 Sep 2026 01:35:34 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 09 Sep 2026 01:35:34 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Wed, 09 Sep 2026 01:35:34 GMT
ENV JAVA_VERSION=17.0.9
# Wed, 09 Sep 2026 01:35:44 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=e47ba7229cef02393e19d5b8f46f7f1cab4829dd17bfe84d5431fc8ff0e22a96     && GRAALVM_AARCH64_DOWNLOAD_SHA256=c3281b21f5220c2f76cf6fa0d646bc42e2d729af2c022bb06e557a613ba16102     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/jdk-${JAVA_VERSION}/graalvm-community-jdk-${JAVA_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && gu --version     && native-image --version # buildkit
# Wed, 09 Sep 2026 01:35:44 GMT
ENV GRADLE_VERSION=8.14.5
# Wed, 09 Sep 2026 01:35:44 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Wed, 09 Sep 2026 01:35:47 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 09 Sep 2026 01:35:47 GMT
USER gradle
# Wed, 09 Sep 2026 01:35:47 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 09 Sep 2026 01:35:47 GMT
USER root
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e12512e2e7caa1c1a82c6be3786035aacd739e63a281fe30ee4514f8a1cef322`  
		Last Modified: Wed, 09 Sep 2026 01:36:51 GMT  
		Size: 4.3 KB (4318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3e279954628d73fc1fcc9d3e5781bda1c7cf38e9986389755920a84def08885`  
		Last Modified: Wed, 09 Sep 2026 01:36:58 GMT  
		Size: 129.3 MB (129264911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:272e7919bdcf245344a6adb08aac2c582f22acb028d76c713234e7958581a67b`  
		Last Modified: Wed, 09 Sep 2026 01:37:01 GMT  
		Size: 283.5 MB (283501864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c433b4e24117392f92923faa213bf8546951d592d690f7b5a0df9bd81f0bdec`  
		Last Modified: Wed, 09 Sep 2026 01:36:58 GMT  
		Size: 138.1 MB (138068533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03295e2effe538530cd082d1634f5895b003afe3e799a3415001aa7308ef5790`  
		Last Modified: Wed, 09 Sep 2026 01:36:52 GMT  
		Size: 59.5 KB (59526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk17-graal-jammy` - unknown; unknown

```console
$ docker pull gradle@sha256:e1e8a750330fc454f220e54b6b0fe9600a8298b3a26a7bcde469ba0d4d314526
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 MB (9384232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70fc8ac7a9da9defe43f850905d65aca6b54d3d0aa6d3e3621dbf4ca712855f6`

```dockerfile
```

-	Layers:
	-	`sha256:b72ea7f1adf680e8022885208473933d9c7935617c2fbd9d702fb5924cfb5351`  
		Last Modified: Wed, 09 Sep 2026 01:36:52 GMT  
		Size: 9.4 MB (9356837 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c3c6477a5d86ed49ea8d73de4b4cfccd2d2b61f54ce08772b4c826b70fb20f0d`  
		Last Modified: Wed, 09 Sep 2026 01:36:51 GMT  
		Size: 27.4 KB (27395 bytes)  
		MIME: application/vnd.in-toto+json
