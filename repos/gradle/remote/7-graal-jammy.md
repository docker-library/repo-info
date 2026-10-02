## `gradle:7-graal-jammy`

```console
$ docker pull gradle@sha256:1de9f7e8a983b6045755419a314d181f951097cd3053ccd42b42f2db3dabfd8a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:7-graal-jammy` - linux; amd64

```console
$ docker pull gradle@sha256:b7b9eaeb5bd433d9e23b127baa898e93bf9e135729c9c19bde6ba9ec28f3e059
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **576.2 MB (576151530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:881dc9c87936d7ca8e7c6524808a30f492659a9a481055197cf283fab563eb56`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:22:19 GMT
CMD ["gradle"]
# Fri, 02 Oct 2026 01:22:19 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 02 Oct 2026 01:22:19 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 02 Oct 2026 01:22:19 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 02 Oct 2026 01:22:19 GMT
WORKDIR /home/gradle
# Fri, 02 Oct 2026 01:22:49 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make                 binutils         ca-certificates         curl         fontconfig         locales         p11-kit         tzdata         unzip         wget                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 02 Oct 2026 01:22:49 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Fri, 02 Oct 2026 01:22:49 GMT
ENV JAVA_VERSION=17.0.9
# Fri, 02 Oct 2026 01:23:00 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=e47ba7229cef02393e19d5b8f46f7f1cab4829dd17bfe84d5431fc8ff0e22a96     && GRAALVM_AARCH64_DOWNLOAD_SHA256=c3281b21f5220c2f76cf6fa0d646bc42e2d729af2c022bb06e557a613ba16102     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/jdk-${JAVA_VERSION}/graalvm-community-jdk-${JAVA_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && gu --version     && native-image --version # buildkit
# Fri, 02 Oct 2026 01:23:00 GMT
ENV GRADLE_VERSION=7.6.6
# Fri, 02 Oct 2026 01:23:00 GMT
ARG GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
# Fri, 02 Oct 2026 01:23:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 02 Oct 2026 01:23:03 GMT
USER gradle
# Fri, 02 Oct 2026 01:23:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Fri, 02 Oct 2026 01:23:03 GMT
USER root
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97ae3545027db349c89c6a327267796c66fe5ecbb55bd35995cdef14f19c5538`  
		Last Modified: Fri, 02 Oct 2026 01:23:36 GMT  
		Size: 4.3 KB (4310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3db3da5dd704a25b91312e985d972309e8b83442d5d2248a77957b1cffd486bd`  
		Last Modified: Fri, 02 Oct 2026 01:23:43 GMT  
		Size: 126.8 MB (126806976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4aea59822a8f689fc925a18809c8b9b2395d4a099d0ca7a4450481ed068d4576`  
		Last Modified: Fri, 02 Oct 2026 01:23:47 GMT  
		Size: 291.1 MB (291064265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cc629a8881a18bbc7d9afa6c36662b9266edd26ef3d8529c02821a9a68b37e2`  
		Last Modified: Fri, 02 Oct 2026 01:23:44 GMT  
		Size: 128.5 MB (128469415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70deaa4b1d7dc839fe564fbb2757ce44963a7f06c22d16874fb04de8253ae639`  
		Last Modified: Fri, 02 Oct 2026 01:23:38 GMT  
		Size: 54.9 KB (54905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:7-graal-jammy` - unknown; unknown

```console
$ docker pull gradle@sha256:94dc3de5335d99900fb06b76b2251d7e4448cebd80062a66b3687c370bfe2f76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 MB (9330369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7a2ccc9f884a3f4c6bac44ea507eb1c812101369ecddc061db62abc96b21a7a`

```dockerfile
```

-	Layers:
	-	`sha256:de99029c8635f38848168dec1b1ffb11c6e4ce6be99885040c2679ebf1be0b53`  
		Last Modified: Fri, 02 Oct 2026 01:23:37 GMT  
		Size: 9.3 MB (9301335 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5aa507e1407d40f23ae4598beb63ad054418ae376f9b8e1263fee7aada56188a`  
		Last Modified: Fri, 02 Oct 2026 01:23:36 GMT  
		Size: 29.0 KB (29034 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:7-graal-jammy` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:3a543a1b7a0ee85043349c46723f0aa836d081aef6f48f3a2df0ef32c15d9bc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **562.7 MB (562675944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69a358cc1578c3a5404fe35207388018250327937614da37beabb781ff86309f`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:20:56 GMT
CMD ["gradle"]
# Fri, 02 Oct 2026 01:20:56 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 02 Oct 2026 01:20:56 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 02 Oct 2026 01:20:56 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 02 Oct 2026 01:20:56 GMT
WORKDIR /home/gradle
# Fri, 02 Oct 2026 01:22:58 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make                 binutils         ca-certificates         curl         fontconfig         locales         p11-kit         tzdata         unzip         wget                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 02 Oct 2026 01:22:58 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Fri, 02 Oct 2026 01:22:58 GMT
ENV JAVA_VERSION=17.0.9
# Fri, 02 Oct 2026 01:23:08 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=e47ba7229cef02393e19d5b8f46f7f1cab4829dd17bfe84d5431fc8ff0e22a96     && GRAALVM_AARCH64_DOWNLOAD_SHA256=c3281b21f5220c2f76cf6fa0d646bc42e2d729af2c022bb06e557a613ba16102     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/jdk-${JAVA_VERSION}/graalvm-community-jdk-${JAVA_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && gu --version     && native-image --version # buildkit
# Fri, 02 Oct 2026 01:23:08 GMT
ENV GRADLE_VERSION=7.6.6
# Fri, 02 Oct 2026 01:23:08 GMT
ARG GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
# Fri, 02 Oct 2026 01:23:11 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 02 Oct 2026 01:23:11 GMT
USER gradle
# Fri, 02 Oct 2026 01:23:11 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Fri, 02 Oct 2026 01:23:11 GMT
USER root
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f07429b4bb45fa1aae1679977f073fa6c66cf93eecc957fadffa7494dea7039`  
		Last Modified: Fri, 02 Oct 2026 01:22:12 GMT  
		Size: 4.3 KB (4304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:790ca97bc961994a4a8d4cc7aa9a0b666e486935d911990255ae1b92bc01d8ea`  
		Last Modified: Fri, 02 Oct 2026 01:23:50 GMT  
		Size: 123.0 MB (122956224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f3f705fdcae75cd7108a0cbf9863879c10faa40ed86c2ea2cfb7f4a0a584fc8`  
		Last Modified: Fri, 02 Oct 2026 01:23:53 GMT  
		Size: 283.5 MB (283502315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12d523328df5a8001b878f2ee88e6d43e1fc423ead51f21b18b59fbf789fa1d9`  
		Last Modified: Fri, 02 Oct 2026 01:23:50 GMT  
		Size: 128.5 MB (128469416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34fb5cebbc3d75db4dfb090744eb3eb02a384577bae239ca9476dfce897cf3b5`  
		Last Modified: Fri, 02 Oct 2026 01:23:43 GMT  
		Size: 59.5 KB (59517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:7-graal-jammy` - unknown; unknown

```console
$ docker pull gradle@sha256:bb2ff346d2b98ae6fc672f45fd7b5a6d4f2f91b9ee10a28f0269092344a78395
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 MB (9299409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22f475082c26c523c7c089751591a310f91b8f561e44497fb31a17ca68b1ce5a`

```dockerfile
```

-	Layers:
	-	`sha256:573e1c2a4900b9fdac0301dc12aac2f8a81fdffda412a96c7be4eba39fb46b67`  
		Last Modified: Fri, 02 Oct 2026 01:23:44 GMT  
		Size: 9.3 MB (9270151 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:11caa70242b3e6f28f915adbaa168a84ce2292d112401d3aee8f13afd08601cd`  
		Last Modified: Fri, 02 Oct 2026 01:23:43 GMT  
		Size: 29.3 KB (29258 bytes)  
		MIME: application/vnd.in-toto+json
