## `clojure:temurin-8-noble`

```console
$ docker pull clojure@sha256:3c6b73260dfa2423963c4dfd2127d7929ab03a92f4ddc1306c30771b07b5df92
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-noble` - linux; amd64

```console
$ docker pull clojure@sha256:77ea200a67c886bb79d6839aa7164085ae8dfdac6ece516eb4366cd1b4a7326b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.6 MB (162608395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:958a1e2580ac5913b38ff7669e2afbe6c39ace22d8a28204386e08a1088a7b40`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:34 GMT
ADD file:3c41cdb0a333e30d2a3c4a90a152da473ef44ae84245fd34a49167a6b8f26cc6 in / 
# Tue, 10 Nov 2026 08:36:35 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 19:47:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 16 Nov 2026 19:47:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 19:47:42 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 16 Nov 2026 19:47:42 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 19:47:42 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Mon, 16 Nov 2026 19:47:46 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='fb3bfa869012419b562bb4235d0d83ec4f8c1dda62ae432ba20c6c3a7e43f7e4';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u512b09.tar.gz';          ;;        arm64)          ESUM='01263df22c4553f63146bbae807e70cd4628dd0d9ec7582f01cb2453f7c69aaa';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        armhf)          ESUM='ff18c5421f350fa59b956f763720431c8f861094ec76c06f83a3dfdf502a6bd1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_arm_linux_hotspot_8u512b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='8a1e67cdb014b924ddd4775cef3089b065aea2a73e9d540e938586319c73a4e1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Mon, 16 Nov 2026 19:47:46 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Mon, 16 Nov 2026 19:47:46 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 16 Nov 2026 19:47:46 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 16 Nov 2026 20:14:51 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Mon, 16 Nov 2026 20:14:51 GMT
WORKDIR /tmp
# Mon, 16 Nov 2026 20:18:15 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" # buildkit
# Mon, 16 Nov 2026 20:18:15 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Mon, 16 Nov 2026 20:18:15 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a594d92c2a987b4d13e79d4e1b1368c6b8ddcbca8ff5e90ce2d3f1ffef7a723c`  
		Last Modified: Mon, 16 Nov 2026 19:48:00 GMT  
		Size: 23.1 MB (23065265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21faed44a687b881f39e51d0f677a58914bc0dab4ea365b6e95d8b1350f66596`  
		Last Modified: Mon, 16 Nov 2026 19:48:00 GMT  
		Size: 55.2 MB (55210354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06419e47b18669c773f8f611dfc2f6f6601a00bb7c56bf7c538fe8ecdb574aae`  
		Last Modified: Mon, 16 Nov 2026 19:47:58 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b2736bd981c98bd34c04b3ae757072800e72ed8f82fac9926eaeefcfcf708bd`  
		Last Modified: Mon, 16 Nov 2026 19:47:59 GMT  
		Size: 2.5 KB (2485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e650d7b2ea2abfd1f9d8ce4c5a43b5d1780294a3ddf06f4c193ba8b4f28ad8b4`  
		Last Modified: Mon, 16 Nov 2026 20:18:31 GMT  
		Size: 54.5 MB (54536294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7efa528df37c63f0b437dce67ada7ef69ef93a9e70f8eee99da6f8067c254d5e`  
		Last Modified: Mon, 16 Nov 2026 20:18:29 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-noble` - unknown; unknown

```console
$ docker pull clojure@sha256:cc5badcd2bcfdbd7f798cdf89ed944d88527b205c89567d4756606c88a36a46f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5871519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d43ddda41fbd1cf2725f1688fe6df88903c7e373d285f8af4c7e2c4dcb9cdde8`

```dockerfile
```

-	Layers:
	-	`sha256:4096d29ab7911e279461c63e517dbf1acf616494898dd0ab0dc88460be87f76b`  
		Last Modified: Mon, 16 Nov 2026 20:18:29 GMT  
		Size: 5.9 MB (5857348 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:850e7f594145fc9e173b71a88ad229beff41b3bbc2a9a4b51bd919d6c4198abf`  
		Last Modified: Mon, 16 Nov 2026 20:18:29 GMT  
		Size: 14.2 KB (14171 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-noble` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:4f4df0a49a28691ce5b453380ea8ca66713eda3a9a2338fd7c700b89a854d502
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.2 MB (158166701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85dbcaeb13559e58d0bb29185066de74e3a0b325b9705a5ac69795c4953f4a7d`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 19:41:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 16 Nov 2026 19:41:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 19:41:44 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 16 Nov 2026 19:41:44 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 19:41:44 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Mon, 16 Nov 2026 19:41:49 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='fb3bfa869012419b562bb4235d0d83ec4f8c1dda62ae432ba20c6c3a7e43f7e4';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u512b09.tar.gz';          ;;        arm64)          ESUM='01263df22c4553f63146bbae807e70cd4628dd0d9ec7582f01cb2453f7c69aaa';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        armhf)          ESUM='ff18c5421f350fa59b956f763720431c8f861094ec76c06f83a3dfdf502a6bd1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_arm_linux_hotspot_8u512b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='8a1e67cdb014b924ddd4775cef3089b065aea2a73e9d540e938586319c73a4e1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Mon, 16 Nov 2026 19:41:49 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Mon, 16 Nov 2026 19:41:49 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 16 Nov 2026 19:41:49 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 16 Nov 2026 19:53:40 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Mon, 16 Nov 2026 19:53:40 GMT
WORKDIR /tmp
# Mon, 16 Nov 2026 19:54:03 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" # buildkit
# Mon, 16 Nov 2026 19:54:03 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Mon, 16 Nov 2026 19:54:03 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e756ac669ca9beaf728b40d2dd34f1ad32e175e3acc4d67cbd07500e4bb8c3d5`  
		Last Modified: Mon, 16 Nov 2026 19:42:03 GMT  
		Size: 22.8 MB (22849531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fc8cb863f45a49d511d5ea4c0ef1d13dccf901d826396329fa1c9c4551feaf2`  
		Last Modified: Mon, 16 Nov 2026 19:42:04 GMT  
		Size: 54.3 MB (54281269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85fa91d7710b897af6c704b21d0f5bf723430c6aa425f2a495f2a2f33c18ca73`  
		Last Modified: Mon, 16 Nov 2026 19:42:02 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19abe2d4bde573bb13f7d47a69cd1cfd8f8ac0e6655fef6d58a9326da182e93b`  
		Last Modified: Mon, 16 Nov 2026 19:42:02 GMT  
		Size: 2.5 KB (2484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9521a2fbe79b92ac9677e67a47b0c8142b76e9a7da9bbf87497fcc1007650cd8`  
		Last Modified: Mon, 16 Nov 2026 19:54:19 GMT  
		Size: 52.1 MB (52067384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26b78ba1fef3bbb913a772a02fffba950b9d5ab645571ee138c349df04048d72`  
		Last Modified: Mon, 16 Nov 2026 19:54:17 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-noble` - unknown; unknown

```console
$ docker pull clojure@sha256:7045ae4db3cc087ea3b712ca1ec15661990a921a18110dc3d6d9443049121510
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5878923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:590794c64c71366810c5d18f065ea107588e2da18808c48a35abf8f559d4901e`

```dockerfile
```

-	Layers:
	-	`sha256:73bd86624d348e3c9e2c8ac93a0d8d418785735a125ec3ccda543af74356c528`  
		Last Modified: Mon, 16 Nov 2026 19:54:18 GMT  
		Size: 5.9 MB (5864636 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:964be5a9d604565e87fa66d15a8e4fb74539ca9aabd76f88e007ccc403726966`  
		Last Modified: Mon, 16 Nov 2026 19:54:17 GMT  
		Size: 14.3 KB (14287 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-noble` - linux; ppc64le

```console
$ docker pull clojure@sha256:200ad69f3a1d5394e4b4b625cf7bc069844c5d763b163e1d69b6f1d92e9420e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.6 MB (162624344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbdbf44e354399910eea3bd2baccae836e7074905515eab2091287cc2ba341ea`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 10 Nov 2026 08:32:56 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:32:56 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:32:56 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:00 GMT
ADD file:89eeaf81edaeaabcc6b5e0c1d26ef4eb2e89301509f4585cbcd17562fbf95198 in / 
# Tue, 10 Nov 2026 08:33:01 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 01:42:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 01:42:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:42:18 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 12 Nov 2026 01:42:18 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 01:42:18 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Mon, 16 Nov 2026 19:39:40 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='fb3bfa869012419b562bb4235d0d83ec4f8c1dda62ae432ba20c6c3a7e43f7e4';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u512b09.tar.gz';          ;;        arm64)          ESUM='01263df22c4553f63146bbae807e70cd4628dd0d9ec7582f01cb2453f7c69aaa';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        armhf)          ESUM='ff18c5421f350fa59b956f763720431c8f861094ec76c06f83a3dfdf502a6bd1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_arm_linux_hotspot_8u512b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='8a1e67cdb014b924ddd4775cef3089b065aea2a73e9d540e938586319c73a4e1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Mon, 16 Nov 2026 19:39:41 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Mon, 16 Nov 2026 19:39:41 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 16 Nov 2026 19:39:41 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 16 Nov 2026 20:55:33 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Mon, 16 Nov 2026 20:55:33 GMT
WORKDIR /tmp
# Mon, 16 Nov 2026 20:56:20 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" # buildkit
# Mon, 16 Nov 2026 20:56:20 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Mon, 16 Nov 2026 20:56:20 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:f78755e68daa4220d3ba6537baccb7cf864d4848b823995344317af2921d0d92`  
		Last Modified: Wed, 11 Nov 2026 23:14:15 GMT  
		Size: 34.4 MB (34406511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d1a2eaa2f10ad948abed3101e624aa8a0b930bc8d06d4be10fffc1fc5e7ccbb`  
		Last Modified: Thu, 12 Nov 2026 01:43:03 GMT  
		Size: 18.8 MB (18782511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9759eda014ce2f874fd35dbd56b211eaf274a1977bc8a67ac712300e11478648`  
		Last Modified: Mon, 16 Nov 2026 19:40:13 GMT  
		Size: 52.7 MB (52693289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5518b1fb0c61d3f39865a2be0ca73ab6032eac9b949553c2567c03f318ddd9e`  
		Last Modified: Mon, 16 Nov 2026 19:40:11 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3966dd1d2265c917d1200932224d9b123874994697881ded9f60c36ca3d76dc1`  
		Last Modified: Mon, 16 Nov 2026 19:40:11 GMT  
		Size: 2.5 KB (2486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:371d68d1af28936dd7a88592110a5724f61c67f8c53a459e02f8ff11eb614183`  
		Last Modified: Mon, 16 Nov 2026 20:56:51 GMT  
		Size: 56.7 MB (56738774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6beff0efbffbbb275ab6abc21d9ded3d8044a617d620bf189b1ffbc4762166c2`  
		Last Modified: Mon, 16 Nov 2026 20:56:50 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-noble` - unknown; unknown

```console
$ docker pull clojure@sha256:8525a7e979df76b8b5edc75d160c2f52961e34a12756cd42b8fe73b308730c51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5877402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7051fdd81f469e2735fdc9d33cd4aef3f1dcfc06177ce57afba70bbc2ea7dd0c`

```dockerfile
```

-	Layers:
	-	`sha256:b0afcfc838a8c0be648f79ad9484f1e744cfab1860519714ef2675fd5693cb68`  
		Last Modified: Mon, 16 Nov 2026 20:56:50 GMT  
		Size: 5.9 MB (5863180 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba652aebebd1724e7098794cd9a6db1014f963aedf0d42995c195e230431d77f`  
		Last Modified: Mon, 16 Nov 2026 20:56:49 GMT  
		Size: 14.2 KB (14222 bytes)  
		MIME: application/vnd.in-toto+json
