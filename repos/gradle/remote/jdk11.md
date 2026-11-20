## `gradle:jdk11`

```console
$ docker pull gradle@sha256:1be9bbf18e47d292d51809438c8b18e1e92baef7d4a3c78281c1fde105e5eb84
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `gradle:jdk11` - linux; amd64

```console
$ docker pull gradle@sha256:7475495591f78ead7e1b5a762edb91ce34137805f7c5a0c66f1cceb328c8b994
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **382.4 MB (382425351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41bc984c2f584d8a4ed82803ab59acfe4d7c1052cd4f5e582354e5d5cd414f0c`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
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
# Fri, 20 Nov 2026 03:15:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 03:15:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:15:10 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:15:10 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:15:10 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Fri, 20 Nov 2026 03:15:44 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='c4b8eaf56c93b95b689ffc08d155df1bcdbbffb666f8f71d21d97aedaea6f0ec';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_x64_linux_hotspot_11.0.33_10.tar.gz';          ;;        arm64)          ESUM='60b0fb79bb678b6fae3e499c7b0a353e68633ed0ab69d1a6bafe6092ed1e59e4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.33_10.tar.gz';          ;;        armhf)          ESUM='61b540e26de94600b2034a07a75492790f873bffd8664f0960ce88cd9e15feca';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_arm_linux_hotspot_11.0.33_10.tar.gz';          ;;        ppc64el)          ESUM='b1512acf29fb47c460b2da198ab13932294c51703920ad1daffc3f29c2ccb4fb';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.33_10.tar.gz';          ;;        s390x)          ESUM='1d100931d701ea97933c429cbc18e249d3bb5b954feff920d75d6c31d7d443d4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.33_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 03:15:45 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 03:15:45 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:15:45 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 03:15:45 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 04:16:47 GMT
CMD ["gradle"]
# Fri, 20 Nov 2026 04:16:47 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 20 Nov 2026 04:16:47 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 20 Nov 2026 04:16:47 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 20 Nov 2026 04:16:47 GMT
WORKDIR /home/gradle
# Fri, 20 Nov 2026 04:16:59 GMT
RUN set -o errexit -o nounset     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 unzip                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 20 Nov 2026 04:16:59 GMT
ENV GRADLE_VERSION=8.14.7
# Fri, 20 Nov 2026 04:16:59 GMT
ARG GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
# Fri, 20 Nov 2026 04:17:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 20 Nov 2026 04:17:03 GMT
USER gradle
# Fri, 20 Nov 2026 04:17:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 20 Nov 2026 04:17:03 GMT
USER root
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95c083cf35e8b41dc72497186f11a503d414d30743013af3ee5f2f00d6039831`  
		Last Modified: Fri, 20 Nov 2026 03:15:28 GMT  
		Size: 16.1 MB (16116271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5212999f0fef0bb76240873a27ae27a88ac1d05b4e183879ea4486106deaa2eb`  
		Last Modified: Fri, 20 Nov 2026 03:16:03 GMT  
		Size: 145.9 MB (145930478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43495af448ad5995f4a70c4dced81be108d12fff555611af28b2f9d6f1b39adc`  
		Last Modified: Fri, 20 Nov 2026 03:16:00 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d146f218a3b59d2f68e45d754eba2365dce7b338827abdeca28e549384c70fb7`  
		Last Modified: Fri, 20 Nov 2026 03:16:00 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23999997c8a747c88cdeec1c51117caf2822fce3a4858309b792b93dd7ef0fec`  
		Last Modified: Fri, 20 Nov 2026 04:17:20 GMT  
		Size: 4.3 KB (4309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c6c699d03766ecf45bcb861f48dd1a34de0e5de3979632b134093a5a4f22446`  
		Last Modified: Fri, 20 Nov 2026 04:17:22 GMT  
		Size: 50.8 MB (50815006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20acc818e512b437a2c02a127e8aca46a159d2e0a7acf0f65a9fd9da5ac290da`  
		Last Modified: Fri, 20 Nov 2026 04:17:24 GMT  
		Size: 139.4 MB (139431918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d008efe3ef7b21a78d8cda7352baefb089520dd660a4496d7224b53ea62e9dc2`  
		Last Modified: Fri, 20 Nov 2026 04:17:20 GMT  
		Size: 54.9 KB (54900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk11` - unknown; unknown

```console
$ docker pull gradle@sha256:5a41b5441bfcfa66ae4fd71319ac64746a17f325a5e4054c05a4de019c9b6786
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7731166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0292d9f5675d39129e5ad0f5c37f5d9f9f0b65d1f1d788c421e903a14732f08d`

```dockerfile
```

-	Layers:
	-	`sha256:3cb107c7d5f216b09f8a7f79602f1ebdc0be998f7460bd459f219f248c4e67ce`  
		Last Modified: Fri, 20 Nov 2026 04:17:20 GMT  
		Size: 7.7 MB (7706491 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7dd23743f02d9c7e29fcedf47c2d062c546f2eb2a7268ef9e76e2dad51e1729d`  
		Last Modified: Fri, 20 Nov 2026 04:17:20 GMT  
		Size: 24.7 KB (24675 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk11` - linux; arm variant v7

```console
$ docker pull gradle@sha256:38f72da05e2a7f0fe27f0190bc9aa31ffc81ada05b72b9ea86d496daf6da1b3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **374.2 MB (374194485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5e92e0e4b628e4b7eaf7fb01628b4e90fb3ee405e2e1b83167eebc302e0d49b`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:40 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:40 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:43 GMT
ADD file:a872ab0d3f28a3797c7da6e33a8d7923099a6907c527b58bce44bfad93c122dc in / 
# Tue, 17 Nov 2026 09:18:43 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:10:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 03:10:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:10:55 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:10:55 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:10:55 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Fri, 20 Nov 2026 03:11:04 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='c4b8eaf56c93b95b689ffc08d155df1bcdbbffb666f8f71d21d97aedaea6f0ec';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_x64_linux_hotspot_11.0.33_10.tar.gz';          ;;        arm64)          ESUM='60b0fb79bb678b6fae3e499c7b0a353e68633ed0ab69d1a6bafe6092ed1e59e4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.33_10.tar.gz';          ;;        armhf)          ESUM='61b540e26de94600b2034a07a75492790f873bffd8664f0960ce88cd9e15feca';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_arm_linux_hotspot_11.0.33_10.tar.gz';          ;;        ppc64el)          ESUM='b1512acf29fb47c460b2da198ab13932294c51703920ad1daffc3f29c2ccb4fb';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.33_10.tar.gz';          ;;        s390x)          ESUM='1d100931d701ea97933c429cbc18e249d3bb5b954feff920d75d6c31d7d443d4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.33_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 03:11:06 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 03:11:06 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:11:06 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 03:11:06 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 04:14:01 GMT
CMD ["gradle"]
# Fri, 20 Nov 2026 04:14:01 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 20 Nov 2026 04:14:01 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 20 Nov 2026 04:14:01 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 20 Nov 2026 04:14:01 GMT
WORKDIR /home/gradle
# Fri, 20 Nov 2026 04:14:14 GMT
RUN set -o errexit -o nounset     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 unzip                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 20 Nov 2026 04:14:14 GMT
ENV GRADLE_VERSION=8.14.7
# Fri, 20 Nov 2026 04:14:14 GMT
ARG GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
# Fri, 20 Nov 2026 04:14:21 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 20 Nov 2026 04:14:21 GMT
USER gradle
# Fri, 20 Nov 2026 04:14:22 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 20 Nov 2026 04:14:22 GMT
USER root
```

-	Layers:
	-	`sha256:2fde5ef6b5929fd5892e075a0de0ae7f80762734f112b1892524a5acebc87144`  
		Last Modified: Tue, 17 Nov 2026 10:29:18 GMT  
		Size: 27.2 MB (27174737 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14d98fbd5d3b8eed41f2cdf66d5bf66553495d015f97e35f2eb30ec1f103bdf8`  
		Last Modified: Fri, 20 Nov 2026 03:11:22 GMT  
		Size: 15.9 MB (15852321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e6b8701763e6986d6f698f93fb1cc1d363dce4983762495702d94e7e2a2d92d`  
		Last Modified: Fri, 20 Nov 2026 03:11:24 GMT  
		Size: 138.4 MB (138409904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dfdde378a3385d2c7e45e3f62c1d41daaadf20ca5558b3c4310f5aea1be61c2`  
		Last Modified: Fri, 20 Nov 2026 03:11:21 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94292ac66ce7341deeee7a3ab6db774a3c5d470c46fa9a05e6341bd8ac88f659`  
		Last Modified: Fri, 20 Nov 2026 03:11:21 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccca67713d73f675644b2a5349e311e50b33c38a26af520ef915c40aed00c2b8`  
		Last Modified: Fri, 20 Nov 2026 04:14:40 GMT  
		Size: 4.3 KB (4295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cc819efc8946f223fadcf6c99e72555010d258cc97fc45e94f3be2bf21232ea`  
		Last Modified: Fri, 20 Nov 2026 04:14:42 GMT  
		Size: 53.3 MB (53287328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f366cf4051f18116b230744b3b261f98ab61bf07c4f88e42b3fcde109ea428f7`  
		Last Modified: Fri, 20 Nov 2026 04:14:44 GMT  
		Size: 139.4 MB (139431945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78fc1b15bd9f5a4183c9c612690440a98dd1617c6f8180e26e00221004680724`  
		Last Modified: Fri, 20 Nov 2026 04:14:40 GMT  
		Size: 31.3 KB (31302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk11` - unknown; unknown

```console
$ docker pull gradle@sha256:5691cdf1cb130006b3bae669f60a0ea533379d1ef6c143ca3652b7f63a66c437
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7731439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a83d460133f829c12a6e85a71cd92d379d4e7892207e7d3e8cf5cb94cbb90372`

```dockerfile
```

-	Layers:
	-	`sha256:d765722d78b3a4b3514f63b4f02bbe25149429cd344c908ef36fca81bf14d73a`  
		Last Modified: Fri, 20 Nov 2026 04:14:40 GMT  
		Size: 7.7 MB (7706613 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:34c46b974da1f4271f067d9fe648e8d800c11e6a2cfbc467e9c168f8cd212251`  
		Last Modified: Fri, 20 Nov 2026 04:14:40 GMT  
		Size: 24.8 KB (24826 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk11` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:ea8e09bb4ce8f1065e6e1ff0e04240a423a9a642a8da893648ebef81af928408
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **376.6 MB (376572831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6dc11c177f4ae76744275caf86352473279de6c1a2ea5b583862ddf68e2580d`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
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
# Fri, 20 Nov 2026 03:16:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 03:16:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:16:23 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:16:23 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:16:23 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Fri, 20 Nov 2026 03:16:32 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='c4b8eaf56c93b95b689ffc08d155df1bcdbbffb666f8f71d21d97aedaea6f0ec';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_x64_linux_hotspot_11.0.33_10.tar.gz';          ;;        arm64)          ESUM='60b0fb79bb678b6fae3e499c7b0a353e68633ed0ab69d1a6bafe6092ed1e59e4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.33_10.tar.gz';          ;;        armhf)          ESUM='61b540e26de94600b2034a07a75492790f873bffd8664f0960ce88cd9e15feca';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_arm_linux_hotspot_11.0.33_10.tar.gz';          ;;        ppc64el)          ESUM='b1512acf29fb47c460b2da198ab13932294c51703920ad1daffc3f29c2ccb4fb';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.33_10.tar.gz';          ;;        s390x)          ESUM='1d100931d701ea97933c429cbc18e249d3bb5b954feff920d75d6c31d7d443d4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.33_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 03:16:33 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 03:16:33 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:16:33 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 03:16:33 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 04:16:46 GMT
CMD ["gradle"]
# Fri, 20 Nov 2026 04:16:46 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 20 Nov 2026 04:16:46 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 20 Nov 2026 04:16:46 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 20 Nov 2026 04:16:47 GMT
WORKDIR /home/gradle
# Fri, 20 Nov 2026 04:17:01 GMT
RUN set -o errexit -o nounset     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 unzip                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 20 Nov 2026 04:17:01 GMT
ENV GRADLE_VERSION=8.14.7
# Fri, 20 Nov 2026 04:17:01 GMT
ARG GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
# Fri, 20 Nov 2026 04:17:04 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 20 Nov 2026 04:17:04 GMT
USER gradle
# Fri, 20 Nov 2026 04:17:05 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 20 Nov 2026 04:17:05 GMT
USER root
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4ef94eb3366d1bc996e03224923f408c9594b4a567d291cfaecc55658180f2a`  
		Last Modified: Fri, 20 Nov 2026 03:16:49 GMT  
		Size: 16.1 MB (16051440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c58176017c5df5f506889c371e54959f174fb95e724ec5681a32b16a5200aa1c`  
		Last Modified: Fri, 20 Nov 2026 03:16:52 GMT  
		Size: 142.6 MB (142624221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a8455cb88656778a3b6660bd7d257cd611c3223df2029f7a09f07bb978633e8`  
		Last Modified: Fri, 20 Nov 2026 03:16:49 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50f9bd5d847fb5088f4cfd2b30f28be13f9e8b991afcad45fbc3913d88100327`  
		Last Modified: Fri, 20 Nov 2026 03:16:40 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f16e68de3da898b3f2ef32b6848d493d7d6e3ec3caad9e8d8c62a9fe7c529afd`  
		Last Modified: Fri, 20 Nov 2026 04:17:23 GMT  
		Size: 4.3 KB (4309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0a4f67ac61ad651e21ee27fc54784249c86f9765041412eae35d4fe250bcdb5`  
		Last Modified: Fri, 20 Nov 2026 04:17:26 GMT  
		Size: 50.4 MB (50397366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:621e6d9107ef91511a464bfe01e106f8c832dd05244789e00517eab75e67613f`  
		Last Modified: Fri, 20 Nov 2026 04:17:27 GMT  
		Size: 139.4 MB (139431911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ed7934069cd3eb1f9aec21f543891adc6d5480c0f2be8d49f16dc088c025f8d`  
		Last Modified: Fri, 20 Nov 2026 04:17:23 GMT  
		Size: 59.5 KB (59528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk11` - unknown; unknown

```console
$ docker pull gradle@sha256:e775dd8820c79d775529b9db572c13247b53731c5efb969d018bff43c4685480
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7737854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd3777d0958059e9c455596a76077fd9133802e25ad4358fc9dfc56639d27f3e`

```dockerfile
```

-	Layers:
	-	`sha256:2f08d535f59f5eb9d2e49d800289d9661f7ccff985907f5754479f4ffc9981cf`  
		Last Modified: Fri, 20 Nov 2026 04:17:24 GMT  
		Size: 7.7 MB (7712982 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b3bee4204dbd43ac68ac1d746860002365fa157bfcade3d2f1ee3c92ddf8beb`  
		Last Modified: Fri, 20 Nov 2026 04:17:23 GMT  
		Size: 24.9 KB (24872 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk11` - linux; ppc64le

```console
$ docker pull gradle@sha256:6fbf6649bafcd26f655c13d9cd0a2a4d72c48e9cdcc77afe08632f73c4b32059
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **379.1 MB (379149169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e6818bb010e16df607f9ac97ecd0b3c1e9bc74dc91a21e171fa1280b99ca467`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 17 Nov 2026 09:20:22 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:20:22 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:20:22 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:25 GMT
ADD file:864e29ad8b1d92dce321e0401fe4ef4bbac836267e9967e73cb6394dc831cccb in / 
# Tue, 17 Nov 2026 09:20:26 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 04:29:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 04:29:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 04:29:01 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 04:29:01 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:29:01 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Fri, 20 Nov 2026 04:30:43 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='c4b8eaf56c93b95b689ffc08d155df1bcdbbffb666f8f71d21d97aedaea6f0ec';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_x64_linux_hotspot_11.0.33_10.tar.gz';          ;;        arm64)          ESUM='60b0fb79bb678b6fae3e499c7b0a353e68633ed0ab69d1a6bafe6092ed1e59e4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.33_10.tar.gz';          ;;        armhf)          ESUM='61b540e26de94600b2034a07a75492790f873bffd8664f0960ce88cd9e15feca';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_arm_linux_hotspot_11.0.33_10.tar.gz';          ;;        ppc64el)          ESUM='b1512acf29fb47c460b2da198ab13932294c51703920ad1daffc3f29c2ccb4fb';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.33_10.tar.gz';          ;;        s390x)          ESUM='1d100931d701ea97933c429cbc18e249d3bb5b954feff920d75d6c31d7d443d4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.33_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 04:30:47 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 04:30:48 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 04:30:48 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 04:30:48 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 06:04:06 GMT
CMD ["gradle"]
# Fri, 20 Nov 2026 06:04:06 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 20 Nov 2026 06:04:06 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 20 Nov 2026 06:04:06 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 20 Nov 2026 06:04:06 GMT
WORKDIR /home/gradle
# Fri, 20 Nov 2026 06:04:42 GMT
RUN set -o errexit -o nounset     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 unzip                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 20 Nov 2026 06:04:42 GMT
ENV GRADLE_VERSION=8.14.7
# Fri, 20 Nov 2026 06:04:42 GMT
ARG GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
# Fri, 20 Nov 2026 06:04:47 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 20 Nov 2026 06:04:47 GMT
USER gradle
# Fri, 20 Nov 2026 06:04:49 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 20 Nov 2026 06:04:49 GMT
USER root
```

-	Layers:
	-	`sha256:a7ab357fd9dc2ccd4042230501ebce1346ff82314b13a35f8a4382786359aba5`  
		Last Modified: Tue, 17 Nov 2026 10:29:26 GMT  
		Size: 35.0 MB (35021662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1126fc5ed4522f0b1560470199a93148a42ea8d10377094ae845db65fbc26782`  
		Last Modified: Fri, 20 Nov 2026 04:29:45 GMT  
		Size: 17.6 MB (17589880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5da6a2974e21badaa543a0da6f7508470b52c1985640cefa96e42eab970f777`  
		Last Modified: Fri, 20 Nov 2026 04:31:28 GMT  
		Size: 132.3 MB (132280694 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc553136a7e0f2e14fc51963f129dad955bf188150f9701c303e620ab319ef11`  
		Last Modified: Fri, 20 Nov 2026 04:31:24 GMT  
		Size: 161.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80a72d9a0d60a6458ee9ba17e14753deccf89a592765ac9d84959d4d774a93fd`  
		Last Modified: Fri, 20 Nov 2026 04:31:25 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b40df8be6d969f98e08402b1a05154f3a31ba62bbb3f0e57c259ee9f6cce4ab`  
		Last Modified: Fri, 20 Nov 2026 06:05:43 GMT  
		Size: 4.3 KB (4309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a962470397b266a4a4026749b182713117d91a51d50f951d1d119fed3696dd1b`  
		Last Modified: Fri, 20 Nov 2026 06:05:45 GMT  
		Size: 54.8 MB (54783039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f476616ab35bd093da72d9d50d1adce7f0a7a7ba4def1466f8719055a01782e`  
		Last Modified: Fri, 20 Nov 2026 06:05:47 GMT  
		Size: 139.4 MB (139431920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70740eb86ca28c6597fe44ba10038a4e3cece556bef43e5712dcc092b9702b57`  
		Last Modified: Fri, 20 Nov 2026 06:05:43 GMT  
		Size: 35.0 KB (35008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk11` - unknown; unknown

```console
$ docker pull gradle@sha256:0bd7bee055b56c1419a1b46345e85d87f8309b99d7c1f80eda0fb80a6b29cfd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7734863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89ccc97651ba222c86b5b3e4320b4dd2882505f3987d74ca9458854fa4d70cea`

```dockerfile
```

-	Layers:
	-	`sha256:d3a228224b9e90c5675e975cce9936dbfddd0000bbfd51721da6c97e2ce8c72f`  
		Last Modified: Fri, 20 Nov 2026 06:05:43 GMT  
		Size: 7.7 MB (7710114 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0667d338a051254278fdce3f0b3ac9feb793b37f97baed37b1ae0bae8344e559`  
		Last Modified: Fri, 20 Nov 2026 06:05:43 GMT  
		Size: 24.7 KB (24749 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk11` - linux; s390x

```console
$ docker pull gradle@sha256:cfbccb9d31da83ebd65a4621d906ec82d9dc5524b5c6fd931c37795108d40184
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **360.7 MB (360656976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbde7b7db3334c36b7b85fa2a9aef86758c799d656d5c3272821898b2275796b`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:34 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:34 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:36 GMT
ADD file:a83bdb195516c0bca280c16e544e4f0bdf6a82e6b162e8d9b57202bce79791b7 in / 
# Tue, 17 Nov 2026 09:18:36 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:09:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 03:09:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:09:48 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:09:48 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:09:48 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Fri, 20 Nov 2026 03:09:53 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='c4b8eaf56c93b95b689ffc08d155df1bcdbbffb666f8f71d21d97aedaea6f0ec';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_x64_linux_hotspot_11.0.33_10.tar.gz';          ;;        arm64)          ESUM='60b0fb79bb678b6fae3e499c7b0a353e68633ed0ab69d1a6bafe6092ed1e59e4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.33_10.tar.gz';          ;;        armhf)          ESUM='61b540e26de94600b2034a07a75492790f873bffd8664f0960ce88cd9e15feca';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_arm_linux_hotspot_11.0.33_10.tar.gz';          ;;        ppc64el)          ESUM='b1512acf29fb47c460b2da198ab13932294c51703920ad1daffc3f29c2ccb4fb';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.33_10.tar.gz';          ;;        s390x)          ESUM='1d100931d701ea97933c429cbc18e249d3bb5b954feff920d75d6c31d7d443d4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.33_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 03:09:55 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 03:09:55 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:09:55 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 03:09:55 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 04:20:12 GMT
CMD ["gradle"]
# Fri, 20 Nov 2026 04:20:12 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 20 Nov 2026 04:20:12 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 20 Nov 2026 04:20:12 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 20 Nov 2026 04:20:13 GMT
WORKDIR /home/gradle
# Fri, 20 Nov 2026 04:20:37 GMT
RUN set -o errexit -o nounset     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 unzip                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 20 Nov 2026 04:20:37 GMT
ENV GRADLE_VERSION=8.14.7
# Fri, 20 Nov 2026 04:20:37 GMT
ARG GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
# Fri, 20 Nov 2026 04:20:41 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 20 Nov 2026 04:20:41 GMT
USER gradle
# Fri, 20 Nov 2026 04:20:43 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 20 Nov 2026 04:20:43 GMT
USER root
```

-	Layers:
	-	`sha256:0210d82c56b8b437087f28e0731e9e1fcb3ad03a1ea704993d475df7f4fc3a8d`  
		Last Modified: Tue, 17 Nov 2026 10:29:39 GMT  
		Size: 28.5 MB (28539018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c9cb6a8c85e275862a5be07e0a097ed4f184f1eb104502bb786c0563da020aa`  
		Last Modified: Fri, 20 Nov 2026 03:10:11 GMT  
		Size: 16.1 MB (16114273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e161cd0a9b6f7c1f45eb952e3b1a2659303819e1ef589c76705095d03f655b58`  
		Last Modified: Fri, 20 Nov 2026 03:10:20 GMT  
		Size: 126.0 MB (126036699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce9c29e58d45143f1537fb9b4637a6e686e27e106f91d99972a422e9c19540af`  
		Last Modified: Fri, 20 Nov 2026 03:10:18 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dda2356416ab32c6201d6bce9bdf08b1165bcf84fbdc1af2f12b0aa8bffa4dd`  
		Last Modified: Fri, 20 Nov 2026 03:09:39 GMT  
		Size: 2.5 KB (2466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bea36eb2be14f03970ac15a5cba36ad968528944d2a141cc36183c94ab4583e`  
		Last Modified: Fri, 20 Nov 2026 04:21:22 GMT  
		Size: 4.3 KB (4312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0e38ff625c613a2c62231fad03f51c4b214831716a754798c8236cf37692348`  
		Last Modified: Fri, 20 Nov 2026 04:21:24 GMT  
		Size: 50.5 MB (50493088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f9f40bd0b27aec8d5ed949565ee6f5e40e8d0676be7605752f51d181bca6100`  
		Last Modified: Fri, 20 Nov 2026 04:21:27 GMT  
		Size: 139.4 MB (139431922 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc183f3b80efd7e2cf86696fb23b24d288735be3e92cf4b1e7c17a1f51476559`  
		Last Modified: Fri, 20 Nov 2026 04:21:22 GMT  
		Size: 35.0 KB (35008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk11` - unknown; unknown

```console
$ docker pull gradle@sha256:80ea2cbb622e7a22f0b8f91e9e54793fc9f7e37d5ff7f1b2f459a601129b172b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7725801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67504f610ef559def90082cd2f7bcd2c6a52595a46038446735a787af4dac10e`

```dockerfile
```

-	Layers:
	-	`sha256:e3b05aeab86ee886097fc7443279f9f5be8f91db6df132626a39bc7b208315c7`  
		Last Modified: Fri, 20 Nov 2026 04:21:23 GMT  
		Size: 7.7 MB (7701125 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d7ffdffd329d45451a9451dac98ca7aa0ca9255044c2c1c95bfcd704eb5bd1c9`  
		Last Modified: Fri, 20 Nov 2026 04:21:22 GMT  
		Size: 24.7 KB (24676 bytes)  
		MIME: application/vnd.in-toto+json
