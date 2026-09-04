## `clojure:temurin-8-jammy`

```console
$ docker pull clojure@sha256:d8f35898194db06cb805756888293f66a42102bc4f59e0b5e9664914623eb6b9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-jammy` - linux; amd64

```console
$ docker pull clojure@sha256:345999dc55c5a78c0882af47af9cfa5db57e18667de4e4d96bfebb23a33f22a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.7 MB (151682995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2779375c3244669d3436ff2d129ac0bb6cea658094db190cdbe6a5b0366ce79`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Fri, 21 Aug 2026 18:22:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:22:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:22:18 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:22:18 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 18:22:18 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Fri, 21 Aug 2026 18:22:21 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='b8f5440f64f50193c01f67dacba55c9660caffe13b908baf6bd1955f4dd4c3ea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_x64_linux_hotspot_8u502b07.tar.gz';          ;;        arm64)          ESUM='34912db17786f7144dab274f040a42028e25da6e7a6a09780d7013339a56bdb2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64el)          ESUM='626e870f411d01d6541fafa11e64b8584d8b737195cec5576256e6d3d34a62ba';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Fri, 21 Aug 2026 18:22:22 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:22:22 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:22:22 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 04 Sep 2026 00:00:49 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:00:49 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:01:08 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" # buildkit
# Fri, 04 Sep 2026 00:01:08 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:01:08 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:733a7e3d9c4620729ffe72d020c336b4bb7c8c71b354f3d85ecb7302857c3d31`  
		Last Modified: Fri, 21 Aug 2026 18:22:34 GMT  
		Size: 16.1 MB (16109366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32bafa291e861ed3cb55c633ad4e0fd216fb14ba5d5a356e0d89fd37e7dd4fb5`  
		Last Modified: Fri, 21 Aug 2026 18:22:36 GMT  
		Size: 55.2 MB (55168707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f89a980baa332a9c4b44c6859c52b1a28c81f4fcfbf20be3d40d0764c20f103c`  
		Last Modified: Fri, 21 Aug 2026 18:22:34 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1cec25022d28baf6a4232009393707e757badf50d5dd73eef63525050c77638`  
		Last Modified: Fri, 21 Aug 2026 18:22:34 GMT  
		Size: 2.5 KB (2485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5788d6972ea360b3d4fee00a3a1bcca5063f292236167437cc5c8b16a6d9b752`  
		Last Modified: Fri, 04 Sep 2026 00:01:25 GMT  
		Size: 50.7 MB (50664716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1d8723891c6784916f85a0ce1368a08e344743200bf8e47a3c36a25f54ee7e3`  
		Last Modified: Fri, 04 Sep 2026 00:01:23 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-jammy` - unknown; unknown

```console
$ docker pull clojure@sha256:e37454ae56fd666035d94487bc1329a6241cfe690279e4d5106a769bf07ae9b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6418860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:447a4beb737fb2477a0d041857db884022e8e78a4cbc5f76f88f2e36aeb369f8`

```dockerfile
```

-	Layers:
	-	`sha256:d989eac74ac2c6ef85375a3c5405b120d91162f7cd949b95971ab34854d7d2f6`  
		Last Modified: Fri, 04 Sep 2026 00:01:23 GMT  
		Size: 6.4 MB (6405368 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d85eafcabbdffa23e25ab2ed1fd6b707940edd4bca17d27043efc092286af41e`  
		Last Modified: Fri, 04 Sep 2026 00:01:24 GMT  
		Size: 13.5 KB (13492 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-jammy` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:f3a63288399c91332dd70541e5cb3d5332a6c95bad4d7167c164d3da267a5759
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.5 MB (148526470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1c1506625eada16f4098d000bf7c6b2edde93f7c9ced1d95b5cecd0b6a011d5`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Fri, 21 Aug 2026 18:25:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:25:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:25:16 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:25:16 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 18:25:16 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Fri, 21 Aug 2026 18:25:19 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='b8f5440f64f50193c01f67dacba55c9660caffe13b908baf6bd1955f4dd4c3ea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_x64_linux_hotspot_8u502b07.tar.gz';          ;;        arm64)          ESUM='34912db17786f7144dab274f040a42028e25da6e7a6a09780d7013339a56bdb2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64el)          ESUM='626e870f411d01d6541fafa11e64b8584d8b737195cec5576256e6d3d34a62ba';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Fri, 21 Aug 2026 18:25:20 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:25:20 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:25:20 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 04 Sep 2026 00:05:24 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:05:24 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:05:43 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" # buildkit
# Fri, 04 Sep 2026 00:05:43 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:05:43 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f70671d002acdc381d4a51fd83422e33c9444f3c1e9b08ddf7c48e6928409542`  
		Last Modified: Fri, 21 Aug 2026 18:25:32 GMT  
		Size: 16.0 MB (16039432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d33992b693978633c66ae36c362599a138a08891872cf6380a319840500f73f`  
		Last Modified: Fri, 21 Aug 2026 18:25:33 GMT  
		Size: 54.3 MB (54269538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8ef437e8e95c3f31bade294400d6d853302f6063ba93588b360bcf1c3b8e40c`  
		Last Modified: Fri, 21 Aug 2026 18:25:31 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:386a4df355d1932b4cdb3f2c11e29bef94d6a92bc229a2c450e4c7a3a56fd007`  
		Last Modified: Fri, 21 Aug 2026 18:25:31 GMT  
		Size: 2.5 KB (2485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4b4954c5ad3adaffc3d19db79d38aa0e6734ef409078d6f8e1f9a600837c2f2`  
		Last Modified: Fri, 04 Sep 2026 00:05:58 GMT  
		Size: 50.6 MB (50593788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:411233eb3fe9975f73320ae4364b9e69e0a5ed641d5e25ef959b40639c225def`  
		Last Modified: Fri, 04 Sep 2026 00:05:57 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-jammy` - unknown; unknown

```console
$ docker pull clojure@sha256:c3d275e0c58eb2d8e35f48ed1dafce4fd70057ea292d42c020832487b9f79c30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6425418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97189c4e7e06e4a5c0aec1ad5eef40c9beb389b7cd2582054621001a471590d3`

```dockerfile
```

-	Layers:
	-	`sha256:314ba39ff83a14438b9b91a23b80fa8596dcf111fbe5e09e5162d902d92ef6b2`  
		Last Modified: Fri, 04 Sep 2026 00:05:57 GMT  
		Size: 6.4 MB (6411834 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2dbc87ffec264f6b4704c161a5c50e8bbc5cd6bd5bc4bebba94fe64f5d019bd1`  
		Last Modified: Fri, 04 Sep 2026 00:05:57 GMT  
		Size: 13.6 KB (13584 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-jammy` - linux; ppc64le

```console
$ docker pull clojure@sha256:ef7b39a893b08cfc0927bbde5edfad116b6055010a0b8e991415f5d02f089554
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.8 MB (159780365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2296cb09e664d390f03cd34043729177ed096b4a93b42fdf221f3c491ca3c68d`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 10 Aug 2026 17:41:01 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:41:01 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:41:01 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:41:05 GMT
ADD file:d76e60867a1f84b7db03c693179093620dc98a06de4f58fdcc806cfc4e4be11c in / 
# Mon, 10 Aug 2026 17:41:05 GMT
CMD ["/bin/bash"]
# Fri, 21 Aug 2026 20:25:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 20:25:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 20:25:12 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 20:25:12 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 20:25:12 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Fri, 21 Aug 2026 20:25:24 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='b8f5440f64f50193c01f67dacba55c9660caffe13b908baf6bd1955f4dd4c3ea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_x64_linux_hotspot_8u502b07.tar.gz';          ;;        arm64)          ESUM='34912db17786f7144dab274f040a42028e25da6e7a6a09780d7013339a56bdb2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64el)          ESUM='626e870f411d01d6541fafa11e64b8584d8b737195cec5576256e6d3d34a62ba';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Fri, 21 Aug 2026 20:25:27 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 20:25:27 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 20:25:27 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 04 Sep 2026 00:03:27 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:03:27 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:04:52 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" # buildkit
# Fri, 04 Sep 2026 00:04:52 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:04:52 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:f91e00e792a8adfcd4df0b5c8e802d3b4d1e06477f9753454043a7ce76772758`  
		Last Modified: Mon, 10 Aug 2026 20:09:02 GMT  
		Size: 34.6 MB (34638145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4a7a0a0ff7d900bf098958aff1c055b4268f0e1ddbd0b6b097b05677ba2c3b8`  
		Last Modified: Fri, 21 Aug 2026 20:25:52 GMT  
		Size: 17.6 MB (17582935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44ea9009de749b970354c0148ce1cd3e99e8af7195918be61d7abea9c6b5d48f`  
		Last Modified: Fri, 21 Aug 2026 20:25:53 GMT  
		Size: 52.7 MB (52675194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53570d95e1a9342c0d0cb1e463aeb6949ecaaeb8fa7e0ca2b9f4a5a0d16cc5ce`  
		Last Modified: Fri, 21 Aug 2026 20:25:51 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0c02893bf6ffe446e17606568a1d06c2d5188521e9ff8c25b7eaa438047c35d`  
		Last Modified: Fri, 21 Aug 2026 20:25:51 GMT  
		Size: 2.5 KB (2485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:504ed9fd67967c46a1aa0c17a1142558081e20730970c9432067c7e748a63d32`  
		Last Modified: Fri, 04 Sep 2026 00:05:33 GMT  
		Size: 54.9 MB (54880829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c03de8646387fe96082678a45e2d15d8325680c88f9234fa4bb9ca9eaff249b6`  
		Last Modified: Fri, 04 Sep 2026 00:05:32 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-jammy` - unknown; unknown

```console
$ docker pull clojure@sha256:2e838fff8518c3c19b2ba773e828373e4587e12d40a55e74905864c47fca27de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6424716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:860c9d385a69237cf7f24238f7bc47bae6b4a3355bce34c8f55ab800a17b0d43`

```dockerfile
```

-	Layers:
	-	`sha256:ff3b3adb92b250330f26e6b59c33dd439f77ea44e67d6f0f8738549a409376c8`  
		Last Modified: Fri, 04 Sep 2026 00:05:32 GMT  
		Size: 6.4 MB (6411186 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:80932e639a75e703c79254515f43dd0010fbc24a948630667dfe21970940988e`  
		Last Modified: Fri, 04 Sep 2026 00:05:31 GMT  
		Size: 13.5 KB (13530 bytes)  
		MIME: application/vnd.in-toto+json
