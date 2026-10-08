## `gradle:8-jdk21-graal-jammy`

```console
$ docker pull gradle@sha256:9f02de7bb9c686cacb3cd570b37d3f6d31a88d6ae70785da1f96799c5eeef344
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:8-jdk21-graal-jammy` - linux; amd64

```console
$ docker pull gradle@sha256:ad2f01b3197cb4d9401c2a27c550d2ca96e587e49e691cf20bd48743e47861a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **586.0 MB (586032189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7db1fea83e50b11c10dfa3ac8396b835d1a37483d96d47f6a7cd3c086b426b11`
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
# Thu, 08 Oct 2026 16:42:35 GMT
CMD ["gradle"]
# Thu, 08 Oct 2026 16:42:35 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 08 Oct 2026 16:42:35 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 08 Oct 2026 16:42:35 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 08 Oct 2026 16:42:35 GMT
WORKDIR /home/gradle
# Thu, 08 Oct 2026 16:43:06 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 08 Oct 2026 16:43:06 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Thu, 08 Oct 2026 16:43:06 GMT
ENV JAVA_VERSION=21.0.2
# Thu, 08 Oct 2026 16:43:16 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=b048069aaa3a99b84f5b957b162cc181a32a4330cbc35402766363c5be76ae48     && GRAALVM_AARCH64_DOWNLOAD_SHA256=a34be691ce68f0acf4655c7c6c63a9a49ed276a11859d7224fd94fc2f657cd7a     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/jdk-${JAVA_VERSION}/graalvm-community-jdk-${JAVA_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && native-image --version # buildkit
# Thu, 08 Oct 2026 16:43:16 GMT
ENV GRADLE_VERSION=8.14.6
# Thu, 08 Oct 2026 16:43:16 GMT
ARG GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
# Thu, 08 Oct 2026 16:43:18 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 08 Oct 2026 16:43:18 GMT
USER gradle
# Thu, 08 Oct 2026 16:43:19 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 08 Oct 2026 16:43:19 GMT
USER root
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6681171908067d6839b685d358b0a3e655d6754a54ced7b3a66a4e70c7f4bbdc`  
		Last Modified: Thu, 08 Oct 2026 16:43:51 GMT  
		Size: 4.3 KB (4306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5b88d38082b101d21b0350d784678fff2491d55ca165467170e38792fdac119`  
		Last Modified: Thu, 08 Oct 2026 16:43:59 GMT  
		Size: 126.8 MB (126807163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fe38fb888b632765277e932774c3915a7f06ec7dbb515304b31ababc3fb07f5`  
		Last Modified: Thu, 08 Oct 2026 16:44:04 GMT  
		Size: 290.0 MB (289986809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a333d5dfc1f1d3a5b7bee718ece6dc5f817e8372e9682b632e0051a8a9e0e5d`  
		Last Modified: Thu, 08 Oct 2026 16:44:00 GMT  
		Size: 139.4 MB (139427344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32be535f36e18b4a63c9ab06ff4b614e589359771d78db0f7cfbab8bcc8aac05`  
		Last Modified: Thu, 08 Oct 2026 16:43:52 GMT  
		Size: 54.9 KB (54908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk21-graal-jammy` - unknown; unknown

```console
$ docker pull gradle@sha256:ba2c8e50272cc1cb1399b9d57a635b882e770c4f2c54642591bd2383e1c338b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 MB (9395687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89148870c67cbcfc16615bddeb4c48c6dcd3f62957d22dfdc5bac0e2b8a7256c`

```dockerfile
```

-	Layers:
	-	`sha256:63a42f3a0754851fcaaee323ebfc434b782c676d97c7dac90ed9769eb024da3d`  
		Last Modified: Thu, 08 Oct 2026 16:43:52 GMT  
		Size: 9.4 MB (9366616 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8539979ccb78e32305aaa925240d92ff50d66fd4e913ae8cb071491a4fa07f69`  
		Last Modified: Thu, 08 Oct 2026 16:43:51 GMT  
		Size: 29.1 KB (29071 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:8-jdk21-graal-jammy` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:89ce7bbb55f017a854d9f2066e1212518248077c52aa9c613aa23ed09bde93e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **571.8 MB (571789201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ef7d35f5b4c13391a293872da4cb9b3726f00bcf876a2979d68f74e390d207f`
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
# Thu, 08 Oct 2026 16:42:36 GMT
CMD ["gradle"]
# Thu, 08 Oct 2026 16:42:36 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 08 Oct 2026 16:42:36 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 08 Oct 2026 16:42:36 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 08 Oct 2026 16:42:36 GMT
WORKDIR /home/gradle
# Thu, 08 Oct 2026 16:43:07 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 08 Oct 2026 16:43:07 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Thu, 08 Oct 2026 16:43:07 GMT
ENV JAVA_VERSION=21.0.2
# Thu, 08 Oct 2026 16:43:15 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=b048069aaa3a99b84f5b957b162cc181a32a4330cbc35402766363c5be76ae48     && GRAALVM_AARCH64_DOWNLOAD_SHA256=a34be691ce68f0acf4655c7c6c63a9a49ed276a11859d7224fd94fc2f657cd7a     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/jdk-${JAVA_VERSION}/graalvm-community-jdk-${JAVA_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && native-image --version # buildkit
# Thu, 08 Oct 2026 16:43:15 GMT
ENV GRADLE_VERSION=8.14.6
# Thu, 08 Oct 2026 16:43:15 GMT
ARG GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
# Thu, 08 Oct 2026 16:43:18 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 08 Oct 2026 16:43:18 GMT
USER gradle
# Thu, 08 Oct 2026 16:43:19 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 08 Oct 2026 16:43:19 GMT
USER root
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f27d607a66ac51f713eefff652f7ee0f0ebc745fb3e34713f3c441ecd6c75ebd`  
		Last Modified: Thu, 08 Oct 2026 16:43:50 GMT  
		Size: 4.3 KB (4311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77468c8db6377466f2ec3220c38c3ffa25ae87da9dd45cb42a39b3e6587b1667`  
		Last Modified: Thu, 08 Oct 2026 16:43:57 GMT  
		Size: 122.9 MB (122947551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eede9d4b950b71c840e2fbf286be2d34eca816cb575fe88d4a3e07d6c38d3cf4`  
		Last Modified: Thu, 08 Oct 2026 16:44:00 GMT  
		Size: 281.7 MB (281666273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df52d65e87921c1fbb384559540ce8ce5d0a31a66b3c975e7284e706a3471dc0`  
		Last Modified: Thu, 08 Oct 2026 16:43:58 GMT  
		Size: 139.4 MB (139427348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:789e05ec69a4cea5325270fce0968edf81af0afb5eb3e64499dfff82463b05de`  
		Last Modified: Thu, 08 Oct 2026 16:43:52 GMT  
		Size: 59.5 KB (59550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk21-graal-jammy` - unknown; unknown

```console
$ docker pull gradle@sha256:bd55c01756daf275426168cbef189e1a23d58ed647517ead79feda6213dc9d4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 MB (9364731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ebc0ca5fac81b8a7e9ff41e06943da1bd50f48b43424aee86db1cfe75c5f81e`

```dockerfile
```

-	Layers:
	-	`sha256:cca767ae16239e3ee58f49a74c9ea4533ceea17d2ed4271ce3899bdae1a5f307`  
		Last Modified: Thu, 08 Oct 2026 16:43:51 GMT  
		Size: 9.3 MB (9335436 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d7fcde75aceef361aca1a29c255ce23fcf8041d206c83f615cfe72c22019a484`  
		Last Modified: Thu, 08 Oct 2026 16:43:50 GMT  
		Size: 29.3 KB (29295 bytes)  
		MIME: application/vnd.in-toto+json
