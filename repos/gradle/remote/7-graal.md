## `gradle:7-graal`

```console
$ docker pull gradle@sha256:f4b630c56a8abb3ce2f78bf7abd40d9ad463f1c0587e060175c834d196283968
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:7-graal` - linux; amd64

```console
$ docker pull gradle@sha256:5445ccf8db8f9586b159205afab100b839b21715c13d7e8d31618e0496d9d887
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **600.0 MB (600005310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee86828a059896087f12471f9f4139522d6b587796d542764f8fd524a30bda47`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:32:01 GMT
CMD ["gradle"]
# Tue, 04 Aug 2026 01:32:01 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 04 Aug 2026 01:32:01 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 04 Aug 2026 01:32:01 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 04 Aug 2026 01:32:01 GMT
WORKDIR /home/gradle
# Tue, 04 Aug 2026 01:32:35 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make                 binutils         ca-certificates         curl         fontconfig         locales         p11-kit         tzdata         unzip         wget                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 04 Aug 2026 01:32:35 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Tue, 04 Aug 2026 01:32:35 GMT
ENV JAVA_VERSION=17.0.9
# Tue, 04 Aug 2026 01:32:44 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=e47ba7229cef02393e19d5b8f46f7f1cab4829dd17bfe84d5431fc8ff0e22a96     && GRAALVM_AARCH64_DOWNLOAD_SHA256=c3281b21f5220c2f76cf6fa0d646bc42e2d729af2c022bb06e557a613ba16102     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/jdk-${JAVA_VERSION}/graalvm-community-jdk-${JAVA_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && gu --version     && native-image --version # buildkit
# Tue, 04 Aug 2026 01:32:44 GMT
ENV GRADLE_VERSION=7.6.6
# Tue, 04 Aug 2026 01:32:44 GMT
ARG GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
# Tue, 04 Aug 2026 01:32:46 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 04 Aug 2026 01:32:46 GMT
USER gradle
# Tue, 04 Aug 2026 01:32:46 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Tue, 04 Aug 2026 01:32:46 GMT
USER root
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b17e81de08884216349f951b3e99c008b2314b5e71c9a4f4eb9068b01379ef0`  
		Last Modified: Tue, 04 Aug 2026 01:33:20 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ec6877557515011a1ebae11d4e37ee4b344ee4782b9433e12d18e6010a825a0`  
		Last Modified: Tue, 04 Aug 2026 01:33:29 GMT  
		Size: 150.7 MB (150664646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec22e09067f92dfd798dbad6eac6780f7da4d285790d65dfce7cdc39df431c64`  
		Last Modified: Tue, 04 Aug 2026 01:33:32 GMT  
		Size: 291.1 MB (291063925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bba81cb881b0fe45d868d9e21ec5c9a97cdf7c7728e2c24cdeacca939293f60e`  
		Last Modified: Tue, 04 Aug 2026 01:33:28 GMT  
		Size: 128.5 MB (128469415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e28dd29aa61493726c85be15c6c0b979a1389d65b962f179c31cafe651ba34a8`  
		Last Modified: Tue, 04 Aug 2026 01:33:22 GMT  
		Size: 54.9 KB (54897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:7-graal` - unknown; unknown

```console
$ docker pull gradle@sha256:ce8e0f20d56712dc12fbf41311d8ee7867dd5e9e9061017d33a51e978ec51077
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.9 MB (8939251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90121239d0afc03ee459b1d461859156f77a887a703bae8b27591d78d5567c38`

```dockerfile
```

-	Layers:
	-	`sha256:78067392a8a5e37a11e3787a7919105788887855513e83a24a5b1337fa62aca0`  
		Last Modified: Tue, 04 Aug 2026 01:33:21 GMT  
		Size: 8.9 MB (8907183 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ead55dfa06b5664dbfdbd8782e3abe942174eb143d9e567ecca2df6557732afd`  
		Last Modified: Tue, 04 Aug 2026 01:33:20 GMT  
		Size: 32.1 KB (32068 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:7-graal` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:b036bf9cb0c0a6e0b890eaf65576169886bc8ba2db80d09362add6e0077924f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **584.3 MB (584288122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bd9dbcd6cb8a2e54f460d21476f9737b372483b5685c4c15d96a79428be73f1`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:29:40 GMT
CMD ["gradle"]
# Tue, 04 Aug 2026 01:29:40 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 04 Aug 2026 01:29:40 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 04 Aug 2026 01:29:40 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 04 Aug 2026 01:29:40 GMT
WORKDIR /home/gradle
# Tue, 04 Aug 2026 01:32:58 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make                 binutils         ca-certificates         curl         fontconfig         locales         p11-kit         tzdata         unzip         wget                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 04 Aug 2026 01:32:58 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Tue, 04 Aug 2026 01:32:58 GMT
ENV JAVA_VERSION=17.0.9
# Tue, 04 Aug 2026 01:33:07 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=e47ba7229cef02393e19d5b8f46f7f1cab4829dd17bfe84d5431fc8ff0e22a96     && GRAALVM_AARCH64_DOWNLOAD_SHA256=c3281b21f5220c2f76cf6fa0d646bc42e2d729af2c022bb06e557a613ba16102     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/jdk-${JAVA_VERSION}/graalvm-community-jdk-${JAVA_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && gu --version     && native-image --version # buildkit
# Tue, 04 Aug 2026 01:33:07 GMT
ENV GRADLE_VERSION=7.6.6
# Tue, 04 Aug 2026 01:33:07 GMT
ARG GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
# Tue, 04 Aug 2026 01:33:09 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 04 Aug 2026 01:33:09 GMT
USER gradle
# Tue, 04 Aug 2026 01:33:09 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Tue, 04 Aug 2026 01:33:09 GMT
USER root
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6698a5b8d1dda264247ee6fd72a264e31ea930f66756eabe52fa5f678f5118c8`  
		Last Modified: Tue, 04 Aug 2026 01:30:56 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07227a3d46141039cc166cccdfce89e74171f792b1683e792e67c2332643998d`  
		Last Modified: Tue, 04 Aug 2026 01:33:48 GMT  
		Size: 143.4 MB (143369150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:192421738f84e57f3a78998e039bb99800048f98ae3fcd73660e3ce51b16ebab`  
		Last Modified: Tue, 04 Aug 2026 01:33:50 GMT  
		Size: 283.5 MB (283501879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba2c6f4a31e9cc37ece7ca27f73e84222a09a458ff95da1902021bb4a1b77af6`  
		Last Modified: Tue, 04 Aug 2026 01:33:48 GMT  
		Size: 128.5 MB (128469440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22a2b20fa6b1d65b21f0a725c9dc965c390ff8431d74e4b25893c3c1551c9824`  
		Last Modified: Tue, 04 Aug 2026 01:33:42 GMT  
		Size: 59.5 KB (59516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:7-graal` - unknown; unknown

```console
$ docker pull gradle@sha256:e45db55a7b1604593ba433342280f7ac631672feb234973a5b743fab46b003c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.9 MB (8935281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d057105bb62930193bf6b01353d190acac30c2b21b89af9eddf0f0746dbb21e1`

```dockerfile
```

-	Layers:
	-	`sha256:fbba0ab2c40943e3286b05c610c453e5d00411413b1066ea7272eb16dba62161`  
		Last Modified: Tue, 04 Aug 2026 01:33:42 GMT  
		Size: 8.9 MB (8902880 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:207a10ea6504c4b776adb9df1fc195aab618a99424dceae38e593c227b7c2bab`  
		Last Modified: Tue, 04 Aug 2026 01:33:42 GMT  
		Size: 32.4 KB (32401 bytes)  
		MIME: application/vnd.in-toto+json
