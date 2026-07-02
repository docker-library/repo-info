## `clojure:temurin-8-jammy`

```console
$ docker pull clojure@sha256:f06bbbf8ad0eaa4d0836de71f27f6635d6127a0fc893abc8e1cf22c05fd934f5
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
$ docker pull clojure@sha256:86f7ff3bdf14c732b580cb3ab50415749ed6547d1e639790d8de04edcba01af4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.9 MB (148913386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c55c67c69e29a56765e4a1ebcdcd448eca4d633f729476404552854b63f6d839`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:20:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 02:20:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 02:20:00 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 02 Jul 2026 02:20:00 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:20:00 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Thu, 02 Jul 2026 02:20:04 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='da257f161d7f8c6ca5b0e5d9e4090f65ac28c5e398072e68b8ae87988b1d1a2e';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u492b09.tar.gz';          ;;        arm64)          ESUM='3c2253b986909c20f79d6de7a0cb957f89c243df57615897836046e24d2e5257';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        armhf)          ESUM='ac93b4b75d6c0592c83030dbbeeaed46f5fbfccb276cf26c86aab3e49bba090e';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_arm_linux_hotspot_8u492b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='867e477e0a54159c7b774c55cfb046767120b1de43f705fa775ece74ea39e341';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Thu, 02 Jul 2026 02:20:05 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Thu, 02 Jul 2026 02:20:05 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:20:05 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 02 Jul 2026 05:47:15 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:47:15 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:47:27 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" # buildkit
# Thu, 02 Jul 2026 05:47:27 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:47:27 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c83caec24db30544ad023e308841e2497566aaa819910d279af3dab84337293d`  
		Last Modified: Thu, 02 Jul 2026 02:20:17 GMT  
		Size: 16.1 MB (16110094 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5f019651bdb399e03596ae0470e52d90bf3cd782c277704d30e45680ea76cc0`  
		Last Modified: Thu, 02 Jul 2026 02:20:18 GMT  
		Size: 55.2 MB (55200417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1573a07acd71b8059e8ea4bff2b6dc84ba528e98e62f6452ce5459659636a49`  
		Last Modified: Thu, 02 Jul 2026 02:20:16 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d692438693d701173c536207d0a199e8fcc81627cbdc648190b05342f804408`  
		Last Modified: Thu, 02 Jul 2026 02:20:16 GMT  
		Size: 2.5 KB (2484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bdb9aca4768ea6bca189a1f201cc84f8b455725017f09f36441979ede6fd04c`  
		Last Modified: Thu, 02 Jul 2026 05:47:43 GMT  
		Size: 47.9 MB (47860736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef2d8c9703b3f2b656d0530f76e6fa3fbc2e16036f257c7c9cee695c715c7012`  
		Last Modified: Thu, 02 Jul 2026 05:47:41 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-jammy` - unknown; unknown

```console
$ docker pull clojure@sha256:a83c64b39cc0f41f0f45ab5b16132b3b90fc205a5c460683a5e107a99be65a90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6418859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:448094e636274e11e7059b1df041244621e1c20187f94d607a3fe3837d13fd81`

```dockerfile
```

-	Layers:
	-	`sha256:52bd8451dacfb2b8d3d7eaf55624ef779d7ebe2ecace13a7f6efeadb9d3daee2`  
		Last Modified: Thu, 02 Jul 2026 05:47:42 GMT  
		Size: 6.4 MB (6405368 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c41e69fb14019974b77552bae96222eda347d31c0f4e68cf4eb296d358670699`  
		Last Modified: Thu, 02 Jul 2026 05:47:41 GMT  
		Size: 13.5 KB (13491 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-jammy` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:dcd09bd83a3d31b91c8c32e0ce18c2f157aa49e05f9eed3c3bb055a2474cdff1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.8 MB (145778922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f2d08ef2079d9be42686096d143ad7bb0dc25867706e9ece42082ec15dbdff6`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:18:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 02:18:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 02:18:52 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 02 Jul 2026 02:18:52 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:18:52 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Thu, 02 Jul 2026 02:18:57 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='da257f161d7f8c6ca5b0e5d9e4090f65ac28c5e398072e68b8ae87988b1d1a2e';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u492b09.tar.gz';          ;;        arm64)          ESUM='3c2253b986909c20f79d6de7a0cb957f89c243df57615897836046e24d2e5257';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        armhf)          ESUM='ac93b4b75d6c0592c83030dbbeeaed46f5fbfccb276cf26c86aab3e49bba090e';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_arm_linux_hotspot_8u492b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='867e477e0a54159c7b774c55cfb046767120b1de43f705fa775ece74ea39e341';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Thu, 02 Jul 2026 02:18:57 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Thu, 02 Jul 2026 02:18:57 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:18:57 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 02 Jul 2026 05:47:31 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:47:31 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:47:46 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" # buildkit
# Thu, 02 Jul 2026 05:47:46 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:47:46 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df52751c4073dc3bbd2ee2b5060cf3c37357f694fda2e6e833676845ef0756b4`  
		Last Modified: Thu, 02 Jul 2026 02:19:10 GMT  
		Size: 16.0 MB (16039925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0aed612b0f382987020b2235b113468346324322c2a351b904f4e79e7540868b`  
		Last Modified: Thu, 02 Jul 2026 02:19:11 GMT  
		Size: 54.3 MB (54277483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29b575b0ed38b1e57d947e34b5f2ebf6569ade63f90d5046d343e0957015ecd4`  
		Last Modified: Thu, 02 Jul 2026 02:19:09 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0ebd7b811a1dc09545576f3af57b3aacc2f00df8771415c17b30d28b696979d`  
		Last Modified: Thu, 02 Jul 2026 02:19:09 GMT  
		Size: 2.5 KB (2486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89e3a64d79da0e8b9dafd41cb96cd7f6228893e023d05227466a570afcc6a824`  
		Last Modified: Thu, 02 Jul 2026 05:48:09 GMT  
		Size: 47.8 MB (47845068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d2e15eda55a3fe25fbc9a7a566e33c4f20c1594f94596d24667e1e7f9a337ce`  
		Last Modified: Thu, 02 Jul 2026 05:48:07 GMT  
		Size: 618.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-jammy` - unknown; unknown

```console
$ docker pull clojure@sha256:4c00c666660dc5110cb872af8f7dbe5f5ee379f667e0d01ea07c12a6163f6c5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6425418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:657b461658ba478eca21b2c41403a7a40b18bc15cd5a266033d2988b147bf1f0`

```dockerfile
```

-	Layers:
	-	`sha256:9dc4a8f4c3eb54bb6ce9cedb3d21ea9f77b64e393b83bce5a947d36a0641109b`  
		Last Modified: Thu, 02 Jul 2026 05:48:07 GMT  
		Size: 6.4 MB (6411834 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a12b7a59863aa90956998fae70a69cdb80b0b3d18c1043cbc7be4bc2655072bb`  
		Last Modified: Thu, 02 Jul 2026 05:48:07 GMT  
		Size: 13.6 KB (13584 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-jammy` - linux; ppc64le

```console
$ docker pull clojure@sha256:323edd79125f410261200f2f7d1d5c3a7c3c6e3991a22ac4811ff7863632f541
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.7 MB (156710350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f5d848c1f12765588da547d9f2a0ae16e07d0db6922b61ab4ebf9114ed76917`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 29 Jun 2026 10:35:02 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:35:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:35:02 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:35:06 GMT
ADD file:fe88ac7d2b59101d91924b906576ed0bd1506245791beb01e66dafe898d768bb in / 
# Mon, 29 Jun 2026 10:35:07 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:13:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 02:13:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 02:13:16 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 02 Jul 2026 02:13:16 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:13:16 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Thu, 02 Jul 2026 02:13:22 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='da257f161d7f8c6ca5b0e5d9e4090f65ac28c5e398072e68b8ae87988b1d1a2e';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u492b09.tar.gz';          ;;        arm64)          ESUM='3c2253b986909c20f79d6de7a0cb957f89c243df57615897836046e24d2e5257';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        armhf)          ESUM='ac93b4b75d6c0592c83030dbbeeaed46f5fbfccb276cf26c86aab3e49bba090e';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_arm_linux_hotspot_8u492b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='867e477e0a54159c7b774c55cfb046767120b1de43f705fa775ece74ea39e341';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Thu, 02 Jul 2026 02:13:23 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Thu, 02 Jul 2026 02:13:23 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:13:23 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 02 Jul 2026 06:47:33 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 06:47:33 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 06:48:14 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" # buildkit
# Thu, 02 Jul 2026 06:48:14 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 06:48:14 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:cf87e8e9427654cae1c380a7eb2a10971210431259802390d53728f83afd8afa`  
		Last Modified: Mon, 29 Jun 2026 11:25:41 GMT  
		Size: 34.6 MB (34641868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33f4b14b2b02d4baef1d2438e749f36a329449d9fbbc7eb0c0ec2dba87c8bd0b`  
		Last Modified: Thu, 02 Jul 2026 02:13:47 GMT  
		Size: 17.6 MB (17582601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae917ca1fd6f2697783a14c39ec3815d11657f6df14474ba4c6475e35deee411`  
		Last Modified: Thu, 02 Jul 2026 02:13:49 GMT  
		Size: 52.7 MB (52670243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2967a79405fec792c79780c1a3091792dc0c67521218ecd52e7734b0bba5494c`  
		Last Modified: Thu, 02 Jul 2026 02:13:46 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a1ec167a5920585deb88364155b6fb00a28b8ae0258c07e624b23a03341e393`  
		Last Modified: Thu, 02 Jul 2026 02:13:47 GMT  
		Size: 2.5 KB (2484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce9015bb2f158ac7301fc6dae9429372377aa37376de0e00e89e232c8d8c7a8c`  
		Last Modified: Thu, 02 Jul 2026 06:48:50 GMT  
		Size: 51.8 MB (51812378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:334c52718e2847c86ebc882324f13afad6624c66cdd3f91ca66a6ef747804790`  
		Last Modified: Thu, 02 Jul 2026 06:48:48 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-jammy` - unknown; unknown

```console
$ docker pull clojure@sha256:4ddf438539a9443a007b572268fd26e768b5bdcf5c73fa8522f1c0b560fb5869
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6424716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9171c831a01657553dbfff7478cf8f7c7bf7957247c75664fa5d84dcbc8377a2`

```dockerfile
```

-	Layers:
	-	`sha256:cfdc3024bc6d3bfc51c066ff7fde6b494b59db07b72097c635d43ac4e2940b43`  
		Last Modified: Thu, 02 Jul 2026 06:48:48 GMT  
		Size: 6.4 MB (6411186 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9d9f79d86c45f2e410019473c505f32f29038db0ddf3e2fc76a9209e2093b4ea`  
		Last Modified: Thu, 02 Jul 2026 06:48:48 GMT  
		Size: 13.5 KB (13530 bytes)  
		MIME: application/vnd.in-toto+json
