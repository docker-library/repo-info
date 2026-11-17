## `clojure:temurin-8-tools-deps-1.12.6.1673-jammy`

```console
$ docker pull clojure@sha256:0a40360d73eb753bbda5b2487d990bb47d438132dd34e38270f8e522d498ad0a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-1.12.6.1673-jammy` - linux; amd64

```console
$ docker pull clojure@sha256:7e8fd0765164a84eaa95e4f3720470f097ed8c458da189a549c27f3dfca27287
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.3 MB (149280350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2362e91422a499857d3abc58d540a223ae8c31f819a6a1454cefc29ce9daf177`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 10 Nov 2026 08:08:35 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:08:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:08:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:08:37 GMT
ADD file:f5e63f24ff2ea992d0d2b5e5c013cff5b0b8054baa392912813e7d238f62d44c in / 
# Tue, 10 Nov 2026 08:08:37 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 19:45:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 16 Nov 2026 19:45:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 19:45:34 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 16 Nov 2026 19:45:34 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 19:45:34 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Mon, 16 Nov 2026 19:45:38 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='fb3bfa869012419b562bb4235d0d83ec4f8c1dda62ae432ba20c6c3a7e43f7e4';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u512b09.tar.gz';          ;;        arm64)          ESUM='01263df22c4553f63146bbae807e70cd4628dd0d9ec7582f01cb2453f7c69aaa';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        armhf)          ESUM='ff18c5421f350fa59b956f763720431c8f861094ec76c06f83a3dfdf502a6bd1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_arm_linux_hotspot_8u512b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='8a1e67cdb014b924ddd4775cef3089b065aea2a73e9d540e938586319c73a4e1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Mon, 16 Nov 2026 19:45:39 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Mon, 16 Nov 2026 19:45:39 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 16 Nov 2026 19:45:39 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 16 Nov 2026 20:14:31 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Mon, 16 Nov 2026 20:14:31 GMT
WORKDIR /tmp
# Mon, 16 Nov 2026 20:15:48 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" # buildkit
# Mon, 16 Nov 2026 20:15:48 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Mon, 16 Nov 2026 20:15:48 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9bf22b4aeef4f0565dfda195f89360d15d382eb49908c3dce5c5721d868a8cf`  
		Last Modified: Mon, 16 Nov 2026 19:45:52 GMT  
		Size: 16.1 MB (16116317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d341d8cba971886fe828f31ae96a11985df0a523251e9d5260be464b42dd3adc`  
		Last Modified: Mon, 16 Nov 2026 19:45:53 GMT  
		Size: 55.2 MB (55210366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f57fb6a4f7e4cd27943c51320ba8e54528fc0a0d927e243a3c383db2d9158b4d`  
		Last Modified: Mon, 16 Nov 2026 19:45:51 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e09d0a7bf445e6d3eaa498a2962285125b9da048b35e1f5838fb7e9987988ef2`  
		Last Modified: Mon, 16 Nov 2026 19:45:51 GMT  
		Size: 2.5 KB (2486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d3be7d61da223ae044026d07296891e54801abf3647ab6226733a3e83682f69`  
		Last Modified: Mon, 16 Nov 2026 20:16:01 GMT  
		Size: 47.9 MB (47880873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9f1fe281180c6c6b8461267f75429ceb3614eb9511db870af9ef13a06da91ba`  
		Last Modified: Mon, 16 Nov 2026 20:16:00 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.6.1673-jammy` - unknown; unknown

```console
$ docker pull clojure@sha256:f926a408bc6539d3ea3fed0f572484b7e42df37d8920f66c9fbf9671d7fc73be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6420520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4e44a6f0441dbb0fd9a652490dcc639c0d0c760abc44b7cb54ebed148882616`

```dockerfile
```

-	Layers:
	-	`sha256:7c6993a03db5fd54b73885f3a540ea5cb2129f2c31bee84c29312c95a6b8e89d`  
		Last Modified: Mon, 16 Nov 2026 20:16:00 GMT  
		Size: 6.4 MB (6407028 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:34d79ab105c8c947b3a537e9a0aa9decbda30af2665d32a058c566e5670dac0b`  
		Last Modified: Mon, 16 Nov 2026 20:16:00 GMT  
		Size: 13.5 KB (13492 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.6.1673-jammy` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:d5647e996f73a5fb3f879289dd2f4e9a2adcc16f6fbeac9a01f63b307af597a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.2 MB (146220761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccb13382554f91c594913d37285a460293db987ef144eb96d6322b9f8b2fae43`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 19:41:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 16 Nov 2026 19:41:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 19:41:54 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 16 Nov 2026 19:41:54 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 19:41:54 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Mon, 16 Nov 2026 19:41:58 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='fb3bfa869012419b562bb4235d0d83ec4f8c1dda62ae432ba20c6c3a7e43f7e4';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u512b09.tar.gz';          ;;        arm64)          ESUM='01263df22c4553f63146bbae807e70cd4628dd0d9ec7582f01cb2453f7c69aaa';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        armhf)          ESUM='ff18c5421f350fa59b956f763720431c8f861094ec76c06f83a3dfdf502a6bd1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_arm_linux_hotspot_8u512b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='8a1e67cdb014b924ddd4775cef3089b065aea2a73e9d540e938586319c73a4e1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Mon, 16 Nov 2026 19:41:58 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Mon, 16 Nov 2026 19:41:58 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 16 Nov 2026 19:41:58 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 16 Nov 2026 19:53:37 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Mon, 16 Nov 2026 19:53:37 GMT
WORKDIR /tmp
# Mon, 16 Nov 2026 19:53:54 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" # buildkit
# Mon, 16 Nov 2026 19:53:54 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Mon, 16 Nov 2026 19:53:54 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:624632ff7915b0b84241283ae0268caacef7851e1ac44d2fdce2adb3a207547c`  
		Last Modified: Mon, 16 Nov 2026 19:42:11 GMT  
		Size: 16.1 MB (16051850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa3c0e77613a97ad4a1594c9409252b018df1d50b05dec1bd1f55e50f40621f0`  
		Last Modified: Mon, 16 Nov 2026 19:42:12 GMT  
		Size: 54.3 MB (54281469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f08fb632b48537073a1d810b8151db45e0d15e70dbba68ee189c505525f8066a`  
		Last Modified: Mon, 16 Nov 2026 19:42:10 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17abdc04b2012cf2419221465d0b7f34f968a0e1f0ff65e0c56e816b1712a3a4`  
		Last Modified: Mon, 16 Nov 2026 19:42:10 GMT  
		Size: 2.5 KB (2485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:185d4e2690f8bd736bb4bdb071a870a321f87b6bb36335fa6f98023e70ec4c92`  
		Last Modified: Mon, 16 Nov 2026 19:54:10 GMT  
		Size: 47.9 MB (47882770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da3884704a378c630954cc513aceab9581072985765377271de0f0a176b52493`  
		Last Modified: Mon, 16 Nov 2026 19:54:09 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.6.1673-jammy` - unknown; unknown

```console
$ docker pull clojure@sha256:645263067de5acdcc74efc0ea175e2d67af20933edc543a094531460ec73cd37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6427077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:576cc58f9246304111feaf33be518700ec6ff5529e59c4bd11c21ea9e738d28d`

```dockerfile
```

-	Layers:
	-	`sha256:316ef1904c1650a9f033e38767580632f0a834f256a77088584e16c33c16aff5`  
		Last Modified: Mon, 16 Nov 2026 19:54:09 GMT  
		Size: 6.4 MB (6413494 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b3b99c3d7a0bc74a531615f509b94d708464a94b566007b1c4cb7e2a3a8cf72`  
		Last Modified: Mon, 16 Nov 2026 19:54:08 GMT  
		Size: 13.6 KB (13583 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.6.1673-jammy` - linux; ppc64le

```console
$ docker pull clojure@sha256:d95403fe2b49bb54f93b3f29ce65f7d67ea620c5e19a21ddc9c8071cea155cc3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.1 MB (157137337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd40c2d52e989f8aa03193e133948a1dd4722ce28a62a28f3914fe60d19875b4`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 10 Nov 2026 08:09:23 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:09:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:09:23 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:09:28 GMT
ADD file:385fbf5f6ded013bc8053d3b154b3dafc78f1addd59a1388bd56f2253ef77d18 in / 
# Tue, 10 Nov 2026 08:09:29 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 01:43:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 01:43:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:43:58 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 12 Nov 2026 01:43:58 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 01:43:58 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Mon, 16 Nov 2026 19:40:44 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='fb3bfa869012419b562bb4235d0d83ec4f8c1dda62ae432ba20c6c3a7e43f7e4';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u512b09.tar.gz';          ;;        arm64)          ESUM='01263df22c4553f63146bbae807e70cd4628dd0d9ec7582f01cb2453f7c69aaa';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        armhf)          ESUM='ff18c5421f350fa59b956f763720431c8f861094ec76c06f83a3dfdf502a6bd1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_arm_linux_hotspot_8u512b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='8a1e67cdb014b924ddd4775cef3089b065aea2a73e9d540e938586319c73a4e1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Mon, 16 Nov 2026 19:40:44 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Mon, 16 Nov 2026 19:40:45 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 16 Nov 2026 19:40:45 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 16 Nov 2026 20:55:26 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Mon, 16 Nov 2026 20:55:26 GMT
WORKDIR /tmp
# Mon, 16 Nov 2026 20:56:01 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" # buildkit
# Mon, 16 Nov 2026 20:56:02 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Mon, 16 Nov 2026 20:56:02 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:930bdfdd5d19974adb0ba597663b144584e8fa18e103e857a3dd3eb2cd73ec5e`  
		Last Modified: Tue, 10 Nov 2026 08:55:08 GMT  
		Size: 35.0 MB (35018100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cba1faedb9b6bca6e619f0939d86a75a1f14ccd767f8792a1fe2c301a11479c6`  
		Last Modified: Thu, 12 Nov 2026 01:44:33 GMT  
		Size: 17.6 MB (17589485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb340ba0f20d030156ec5c961463ad57591c846cd982227d15ee4c1aa93572f9`  
		Last Modified: Mon, 16 Nov 2026 19:41:15 GMT  
		Size: 52.7 MB (52692992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:802c26022756658fe8c22748fd1fcc5879e88bea127e5cf7139b642198e7d7cb`  
		Last Modified: Mon, 16 Nov 2026 19:41:13 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:393218464878052c15c204149f6232d98d93e64e403f24d8b2b74e9594ac7417`  
		Last Modified: Mon, 16 Nov 2026 19:41:13 GMT  
		Size: 2.5 KB (2484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b8356cce476a4eb61fa500182879643d14dc257ef109cecd90bed60915531a9`  
		Last Modified: Mon, 16 Nov 2026 20:56:38 GMT  
		Size: 51.8 MB (51833503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26def8e460274c522d72598de94dde8cc1449b5adf9f398408ebd61a44a03c98`  
		Last Modified: Mon, 16 Nov 2026 20:56:36 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.6.1673-jammy` - unknown; unknown

```console
$ docker pull clojure@sha256:0ecc7b9d03c69eabf292e8d854ebd928babb95610b39dc65e97d9fd63cf96a51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6424769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3992b7d9abc09e047687beec28b111d7677f26483b82f293b58214a386c5849b`

```dockerfile
```

-	Layers:
	-	`sha256:88b3926006d79daac58c6f89e175fc5c82d1e4deb89f82b95c5097912390a56d`  
		Last Modified: Mon, 16 Nov 2026 20:56:36 GMT  
		Size: 6.4 MB (6411240 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:deb9650f93def4e747ab5a8c9105579a8fe1f2df4c6d76374c2dc4930c92e2f2`  
		Last Modified: Mon, 16 Nov 2026 20:56:36 GMT  
		Size: 13.5 KB (13529 bytes)  
		MIME: application/vnd.in-toto+json
