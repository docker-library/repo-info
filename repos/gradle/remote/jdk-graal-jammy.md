## `gradle:jdk-graal-jammy`

```console
$ docker pull gradle@sha256:fe5adb5708209680f5283911b8e5cafd42f6980f70a88bd38644757473b72ea9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:jdk-graal-jammy` - linux; amd64

```console
$ docker pull gradle@sha256:7f384fac0e65c45f79c341c3a117d3eed48ce6771d50294cf53ba5d35836a65d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **609.5 MB (609535857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8afc53917a08ae6241491a08fb6fd08331c76c20ead39ea83b00cb70b0576ece`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:17:23 GMT
CMD ["gradle"]
# Fri, 20 Nov 2026 03:17:23 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 20 Nov 2026 03:17:23 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 20 Nov 2026 03:17:23 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 20 Nov 2026 03:17:23 GMT
WORKDIR /home/gradle
# Fri, 20 Nov 2026 03:17:48 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 20 Nov 2026 03:17:48 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Fri, 20 Nov 2026 03:17:48 GMT
ENV JAVA_VERSION=21.0.13.0.3+6
# Fri, 20 Nov 2026 03:18:03 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading Liberica NIK"     && LIBERICA_NIK_AMD64_DOWNLOAD_SHA256=94e0256d16a97268a548cd427a803f9c5b2ef2134c2f8521826532153ba70df0     && LIBERICA_NIK_AARCH64_DOWNLOAD_SHA256=00cc8ae405e44ee63de0827c7a4d49fd865db324cb75554fa291c459b4621af1     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then LIBERICA_NIK_ARCHITECTURE=amd64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then LIBERICA_NIK_ARCHITECTURE=aarch64; fi     && LIBERICA_NIK_RELEASE_TAG=23.1.13+1-21.0.13.0.3+6     && LIBERICA_NIK_VERSION=23.1.13+1     && LIBERICA_NIK_PKG=https://github.com/bell-sw/LibericaNIK/releases/download/${LIBERICA_NIK_RELEASE_TAG}/bellsoft-liberica-vm-openjdk${JAVA_VERSION}-${LIBERICA_NIK_VERSION}-linux-${LIBERICA_NIK_ARCHITECTURE}.tar.gz     && wget --no-verbose --output-document=liberica-nik.tar.gz "${LIBERICA_NIK_PKG}"         && echo "Checking Liberica NIK download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then LIBERICA_NIK_DOWNLOAD_SHA256="${LIBERICA_NIK_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then LIBERICA_NIK_DOWNLOAD_SHA256="${LIBERICA_NIK_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${LIBERICA_NIK_DOWNLOAD_SHA256} *liberica-nik.tar.gz" | sha256sum --check -         && echo "Installing Liberica NIK"     && mkdir "${JAVA_HOME}"     && tar --extract --gunzip --file liberica-nik.tar.gz --strip-components=1 --directory "${JAVA_HOME}"     && rm liberica-nik.tar.gz     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing Liberica NIK installation"     && java --version     && javac --version     && native-image --version # buildkit
# Fri, 20 Nov 2026 03:18:03 GMT
ENV GRADLE_VERSION=9.9.1
# Fri, 20 Nov 2026 03:18:03 GMT
ARG GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
# Fri, 20 Nov 2026 03:18:07 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 20 Nov 2026 03:18:07 GMT
USER gradle
# Fri, 20 Nov 2026 03:18:08 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 20 Nov 2026 03:18:08 GMT
USER root
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63031be2960225615b6ce93e9a219486fa156c203cd7ff30a81301933b9894a9`  
		Last Modified: Fri, 20 Nov 2026 03:18:42 GMT  
		Size: 4.3 KB (4305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86c696a150acfb142ff176254bc564556c8d462ed3ba9734017877209e6877af`  
		Last Modified: Fri, 20 Nov 2026 03:18:49 GMT  
		Size: 126.8 MB (126843083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36a52253143285461482f5f7cd5f50bc4d1e4b696aec1d5b7a5750a52824a7de`  
		Last Modified: Fri, 20 Nov 2026 03:18:52 GMT  
		Size: 317.8 MB (317772107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b37dedc2bd7b862acd8e90c9ac2cc5a8defd4350601b43f29baac3d5e262fc6`  
		Last Modified: Fri, 20 Nov 2026 03:18:49 GMT  
		Size: 134.8 MB (134820901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ae7fbc032efbd918715c32262a6f5e79de34a0da78fb42ec791703e08d65553`  
		Last Modified: Fri, 20 Nov 2026 03:18:44 GMT  
		Size: 25.6 KB (25614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk-graal-jammy` - unknown; unknown

```console
$ docker pull gradle@sha256:f003e43595a15b6b37b5126aedcea961da40cf48a83707540f9b5c32ba806382
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 MB (9478899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdef0d3d9a439490dd9f74c9fa0e4624f8b285c0416444a13dff2d3588bb539c`

```dockerfile
```

-	Layers:
	-	`sha256:6fccddcd739706b694ee6b7525954cd2749c09bfc825dfce453adc3629a1eb2f`  
		Last Modified: Fri, 20 Nov 2026 03:18:43 GMT  
		Size: 9.4 MB (9448152 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e5af7f09940fdfd161af87772e8e7f543cc7a260df32a195d59de813878cf335`  
		Last Modified: Fri, 20 Nov 2026 03:18:42 GMT  
		Size: 30.7 KB (30747 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk-graal-jammy` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:00247ad2b79917ae486c93ef890aad9ffb514cc42396de25bf59871616556cb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **597.8 MB (597847258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:daf677340dae0e6558d81eaa5b2dbe3fadb9c1aa054289879459cb531920c2ff`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:18:06 GMT
CMD ["gradle"]
# Fri, 20 Nov 2026 03:18:06 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 20 Nov 2026 03:18:06 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 20 Nov 2026 03:18:06 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 20 Nov 2026 03:18:06 GMT
WORKDIR /home/gradle
# Fri, 20 Nov 2026 03:18:44 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 20 Nov 2026 03:18:44 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Fri, 20 Nov 2026 03:18:44 GMT
ENV JAVA_VERSION=21.0.13.0.3+6
# Fri, 20 Nov 2026 03:18:56 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading Liberica NIK"     && LIBERICA_NIK_AMD64_DOWNLOAD_SHA256=94e0256d16a97268a548cd427a803f9c5b2ef2134c2f8521826532153ba70df0     && LIBERICA_NIK_AARCH64_DOWNLOAD_SHA256=00cc8ae405e44ee63de0827c7a4d49fd865db324cb75554fa291c459b4621af1     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then LIBERICA_NIK_ARCHITECTURE=amd64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then LIBERICA_NIK_ARCHITECTURE=aarch64; fi     && LIBERICA_NIK_RELEASE_TAG=23.1.13+1-21.0.13.0.3+6     && LIBERICA_NIK_VERSION=23.1.13+1     && LIBERICA_NIK_PKG=https://github.com/bell-sw/LibericaNIK/releases/download/${LIBERICA_NIK_RELEASE_TAG}/bellsoft-liberica-vm-openjdk${JAVA_VERSION}-${LIBERICA_NIK_VERSION}-linux-${LIBERICA_NIK_ARCHITECTURE}.tar.gz     && wget --no-verbose --output-document=liberica-nik.tar.gz "${LIBERICA_NIK_PKG}"         && echo "Checking Liberica NIK download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then LIBERICA_NIK_DOWNLOAD_SHA256="${LIBERICA_NIK_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then LIBERICA_NIK_DOWNLOAD_SHA256="${LIBERICA_NIK_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${LIBERICA_NIK_DOWNLOAD_SHA256} *liberica-nik.tar.gz" | sha256sum --check -         && echo "Installing Liberica NIK"     && mkdir "${JAVA_HOME}"     && tar --extract --gunzip --file liberica-nik.tar.gz --strip-components=1 --directory "${JAVA_HOME}"     && rm liberica-nik.tar.gz     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing Liberica NIK installation"     && java --version     && javac --version     && native-image --version # buildkit
# Fri, 20 Nov 2026 03:18:56 GMT
ENV GRADLE_VERSION=9.9.1
# Fri, 20 Nov 2026 03:18:56 GMT
ARG GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
# Fri, 20 Nov 2026 03:18:59 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 20 Nov 2026 03:18:59 GMT
USER gradle
# Fri, 20 Nov 2026 03:19:00 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 20 Nov 2026 03:19:00 GMT
USER root
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2a9a45ccabd39d206a4c1323d3a712adbfc4306fd2743f4598e17c7cc6d5638`  
		Last Modified: Fri, 20 Nov 2026 03:19:33 GMT  
		Size: 4.3 KB (4311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7faf98a04b30facd9a1cb9ed151f0d3a93d4f605a2b404072145ac9f5d1c8ecf`  
		Last Modified: Fri, 20 Nov 2026 03:19:40 GMT  
		Size: 123.0 MB (122986094 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a67e86f5bb7832c607358736f5dd2534f9715eef757c703f2679c9893040cf9`  
		Last Modified: Fri, 20 Nov 2026 03:19:43 GMT  
		Size: 312.0 MB (312005180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b882f3e347f61ca1f3fe9f6ab415e3101df14e21a89f45f48e442b4531a7072a`  
		Last Modified: Fri, 20 Nov 2026 03:19:40 GMT  
		Size: 134.8 MB (134820901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90dfbfe81c8c708deece36e8349f9c47a3a9253695c902f217a4f350608ab87f`  
		Last Modified: Fri, 20 Nov 2026 03:19:35 GMT  
		Size: 29.3 KB (29339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk-graal-jammy` - unknown; unknown

```console
$ docker pull gradle@sha256:43c285cb5fc3b9bb3063122477bb3ab10b3bc6fb3a68e4e146cbed9907ea4067
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 MB (9472541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a572715102bd50e0cf82fe5777535e03eaed1a446bc3ee124636a3356da13805`

```dockerfile
```

-	Layers:
	-	`sha256:c1dfda3e3c03a1e4a741a23fb89cda54acac042be6cc6f92754e7fc30c2c1de5`  
		Last Modified: Fri, 20 Nov 2026 03:19:34 GMT  
		Size: 9.4 MB (9441534 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:961f89b654f61514b2b958caedd49703bdde5c90fdd20324486f9d3732093103`  
		Last Modified: Fri, 20 Nov 2026 03:19:33 GMT  
		Size: 31.0 KB (31007 bytes)  
		MIME: application/vnd.in-toto+json
