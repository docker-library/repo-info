## `gradle:8-jdk-graal`

```console
$ docker pull gradle@sha256:8bad0ffad56e1c0fa48abfdcecd79a17f181ebdc6a5714ed988408c1a19607fa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:8-jdk-graal` - linux; amd64

```console
$ docker pull gradle@sha256:8b0c5a81c02f8289c4cf193ee7dcef6cac0025b8547e0967796b33f2663f0844
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **637.9 MB (637863998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad539ea7f25c1f935d6e70fa46252280c1c903e5e315ac2a2ebf05351dbf233c`
-	Default Command: `["gradle"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 20:14:40 GMT
CMD ["gradle"]
# Wed, 11 Nov 2026 20:14:40 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 11 Nov 2026 20:14:40 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 11 Nov 2026 20:14:40 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 11 Nov 2026 20:14:40 GMT
WORKDIR /home/gradle
# Wed, 11 Nov 2026 20:15:06 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 11 Nov 2026 20:15:06 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Wed, 11 Nov 2026 20:15:06 GMT
ENV JAVA_VERSION=21.0.13.0.3+6
# Wed, 11 Nov 2026 20:15:15 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading Liberica NIK"     && LIBERICA_NIK_AMD64_DOWNLOAD_SHA256=94e0256d16a97268a548cd427a803f9c5b2ef2134c2f8521826532153ba70df0     && LIBERICA_NIK_AARCH64_DOWNLOAD_SHA256=00cc8ae405e44ee63de0827c7a4d49fd865db324cb75554fa291c459b4621af1     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then LIBERICA_NIK_ARCHITECTURE=amd64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then LIBERICA_NIK_ARCHITECTURE=aarch64; fi     && LIBERICA_NIK_RELEASE_TAG=23.1.13+1-21.0.13.0.3+6     && LIBERICA_NIK_VERSION=23.1.13+1     && LIBERICA_NIK_PKG=https://github.com/bell-sw/LibericaNIK/releases/download/${LIBERICA_NIK_RELEASE_TAG}/bellsoft-liberica-vm-openjdk${JAVA_VERSION}-${LIBERICA_NIK_VERSION}-linux-${LIBERICA_NIK_ARCHITECTURE}.tar.gz     && wget --no-verbose --output-document=liberica-nik.tar.gz "${LIBERICA_NIK_PKG}"         && echo "Checking Liberica NIK download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then LIBERICA_NIK_DOWNLOAD_SHA256="${LIBERICA_NIK_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then LIBERICA_NIK_DOWNLOAD_SHA256="${LIBERICA_NIK_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${LIBERICA_NIK_DOWNLOAD_SHA256} *liberica-nik.tar.gz" | sha256sum --check -         && echo "Installing Liberica NIK"     && mkdir "${JAVA_HOME}"     && tar --extract --gunzip --file liberica-nik.tar.gz --strip-components=1 --directory "${JAVA_HOME}"     && rm liberica-nik.tar.gz     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing Liberica NIK installation"     && java --version     && javac --version     && native-image --version # buildkit
# Wed, 11 Nov 2026 20:15:15 GMT
ENV GRADLE_VERSION=8.14.7
# Wed, 11 Nov 2026 20:15:15 GMT
ARG GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
# Wed, 11 Nov 2026 20:15:18 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 11 Nov 2026 20:15:18 GMT
USER gradle
# Wed, 11 Nov 2026 20:15:19 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 11 Nov 2026 20:15:19 GMT
USER root
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c625e7dd1776dd1242b86409c5d776ce7810979a4ee4a75ea84fbdc06545bb61`  
		Last Modified: Wed, 11 Nov 2026 20:15:51 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a14c5eeff0ee3bcb8b2be54ac2b413b77ad43462e05e0808eeb6149bd96cfb69`  
		Last Modified: Wed, 11 Nov 2026 20:15:59 GMT  
		Size: 150.8 MB (150836185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad4ab9fb7c8d624905b30729a27f073f39d7bc65142502463909c143be21676e`  
		Last Modified: Wed, 11 Nov 2026 20:16:02 GMT  
		Size: 317.8 MB (317772033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b50c2e3c230e41209eac930c7ca55ccb39de7d5599991bde127a56b3dc348b1`  
		Last Modified: Wed, 11 Nov 2026 20:15:59 GMT  
		Size: 139.4 MB (139431944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b067fd287a6f1bc979d5f758a121305cf119c9282d9caba61e9c852f2bb33544`  
		Last Modified: Wed, 11 Nov 2026 20:15:52 GMT  
		Size: 54.9 KB (54905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk-graal` - unknown; unknown

```console
$ docker pull gradle@sha256:dd607c93c5d576f72dee825cb0e0f881ccf58cd14bac5d636592b59d349c7d9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 MB (9051868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b724a8efa3d66662bcbd0b3ca5485addf7c36a6fc9849ea5a2ee0c0d393fab31`

```dockerfile
```

-	Layers:
	-	`sha256:c42f56fb287ab066e6db95d483993a37602bebfdcfe3fb38fd05552055c19613`  
		Last Modified: Wed, 11 Nov 2026 20:15:52 GMT  
		Size: 9.0 MB (9019004 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a05646e62acf36686de17fda2b58a14fbd2b39a30fa0189324bd7d5e63266883`  
		Last Modified: Wed, 11 Nov 2026 20:15:51 GMT  
		Size: 32.9 KB (32864 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:8-jdk-graal` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:1f29b195caaec27cc8c681f0d43b4efd0491bdaed8294295a321ecea64755267
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **626.3 MB (626340644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a670ceebfe54e7fa503b80eeff076465d10ae10c302c2da6a750dd3cb540acc5`
-	Default Command: `["gradle"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 19:53:13 GMT
CMD ["gradle"]
# Wed, 11 Nov 2026 19:53:13 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 11 Nov 2026 19:53:13 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 11 Nov 2026 19:53:13 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 11 Nov 2026 19:53:13 GMT
WORKDIR /home/gradle
# Wed, 11 Nov 2026 19:53:42 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 11 Nov 2026 19:53:42 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Wed, 11 Nov 2026 19:53:42 GMT
ENV JAVA_VERSION=21.0.13.0.3+6
# Wed, 11 Nov 2026 19:55:02 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading Liberica NIK"     && LIBERICA_NIK_AMD64_DOWNLOAD_SHA256=94e0256d16a97268a548cd427a803f9c5b2ef2134c2f8521826532153ba70df0     && LIBERICA_NIK_AARCH64_DOWNLOAD_SHA256=00cc8ae405e44ee63de0827c7a4d49fd865db324cb75554fa291c459b4621af1     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then LIBERICA_NIK_ARCHITECTURE=amd64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then LIBERICA_NIK_ARCHITECTURE=aarch64; fi     && LIBERICA_NIK_RELEASE_TAG=23.1.13+1-21.0.13.0.3+6     && LIBERICA_NIK_VERSION=23.1.13+1     && LIBERICA_NIK_PKG=https://github.com/bell-sw/LibericaNIK/releases/download/${LIBERICA_NIK_RELEASE_TAG}/bellsoft-liberica-vm-openjdk${JAVA_VERSION}-${LIBERICA_NIK_VERSION}-linux-${LIBERICA_NIK_ARCHITECTURE}.tar.gz     && wget --no-verbose --output-document=liberica-nik.tar.gz "${LIBERICA_NIK_PKG}"         && echo "Checking Liberica NIK download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then LIBERICA_NIK_DOWNLOAD_SHA256="${LIBERICA_NIK_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then LIBERICA_NIK_DOWNLOAD_SHA256="${LIBERICA_NIK_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${LIBERICA_NIK_DOWNLOAD_SHA256} *liberica-nik.tar.gz" | sha256sum --check -         && echo "Installing Liberica NIK"     && mkdir "${JAVA_HOME}"     && tar --extract --gunzip --file liberica-nik.tar.gz --strip-components=1 --directory "${JAVA_HOME}"     && rm liberica-nik.tar.gz     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing Liberica NIK installation"     && java --version     && javac --version     && native-image --version # buildkit
# Wed, 11 Nov 2026 19:55:02 GMT
ENV GRADLE_VERSION=8.14.7
# Wed, 11 Nov 2026 19:55:02 GMT
ARG GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
# Wed, 11 Nov 2026 19:55:05 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 11 Nov 2026 19:55:05 GMT
USER gradle
# Wed, 11 Nov 2026 19:55:06 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 11 Nov 2026 19:55:06 GMT
USER root
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e2993b31ba5d1090b2d053afd14ab7aff728cc077fdb46f595345241f62ceb6`  
		Last Modified: Wed, 11 Nov 2026 19:54:35 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a4f14c459d327cf30e2aa5ad2799903e40ba9286433de0ef8e0abc0ffff4cdd`  
		Last Modified: Wed, 11 Nov 2026 19:54:42 GMT  
		Size: 145.9 MB (145902666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:befa2468ea14b7b7f52308d23cdb143fd66212b94766740e653da7106a900bce`  
		Last Modified: Wed, 11 Nov 2026 19:55:46 GMT  
		Size: 312.0 MB (312005076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e134a57167ab651e5b4fe0755668b64bb3052b4b4187bebb6eeb94cbaba5a10a`  
		Last Modified: Wed, 11 Nov 2026 19:55:43 GMT  
		Size: 139.4 MB (139431911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4bee595ea5e218045fe73d84daa8615c24fc562fb30886e2786f4217620569c`  
		Last Modified: Wed, 11 Nov 2026 19:55:38 GMT  
		Size: 59.5 KB (59547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk-graal` - unknown; unknown

```console
$ docker pull gradle@sha256:b77cc29e2643c5d6a3b809a699d8365b6780942c6008057c1eb3df104b6a1f4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 MB (9072426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:321ddff45beb36f6c1a5bf89b8062c1f68efa95d02459ff0928389f20f55b365`

```dockerfile
```

-	Layers:
	-	`sha256:7818c234ea7f7a7324244414d326457165612c51ca893dd880b49d782cf0f78e`  
		Last Modified: Wed, 11 Nov 2026 19:55:39 GMT  
		Size: 9.0 MB (9039231 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ac8da8eb053a6fdf9aad623668baaa78e1daf4c766273a332341449cc19f5690`  
		Last Modified: Wed, 11 Nov 2026 19:55:38 GMT  
		Size: 33.2 KB (33195 bytes)  
		MIME: application/vnd.in-toto+json
