## `clojure:temurin-11-tools-deps-jammy`

```console
$ docker pull clojure@sha256:4fecb0702d24d98e6268ffc7ec173576b88d1d9d85197a0bdb96f6ae0313a1f5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-jammy` - linux; amd64

```console
$ docker pull clojure@sha256:03a380c8257070b993bde61c8c07a3b8e518d7ee170afff70e3c97e23795725f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.6 MB (239609619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94fb7e3c4c4111000007e18c709d38b088d1e08b85b8d0175a6124a8309e103b`
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
# Thu, 02 Jul 2026 02:20:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 02:20:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 02:20:38 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 02 Jul 2026 02:20:38 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:20:38 GMT
ENV JAVA_VERSION=jdk-11.0.31+11
# Thu, 02 Jul 2026 02:20:45 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='1e9de64586b519c0a981319489257cabedd9457599f3823424a87c3158fbe939';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_x64_linux_hotspot_11.0.31_11.tar.gz';          ;;        arm64)          ESUM='257f4d39e060658fc2eb89a803ca43b3f337e64e253f2d94ebae1d85c9ef5f69';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.31_11.tar.gz';          ;;        armhf)          ESUM='3e0ff500a650a552adb2478895ba5de2b133da9b4b816fa76095969b4eec61ce';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_arm_linux_hotspot_11.0.31_11.tar.gz';          ;;        ppc64el)          ESUM='e473d10c3c44f67301fd90abd9e4b7ae312eae8a2399b333fcf4179daf35a743';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.31_11.tar.gz';          ;;        s390x)          ESUM='4d3709cdc03de1a00f14f530c2ebad1883d9bcc8a556fc419f083bec87b4687a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.31_11.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 02 Jul 2026 02:20:47 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 02 Jul 2026 02:20:47 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:20:47 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 02 Jul 2026 02:20:47 GMT
CMD ["jshell"]
# Thu, 02 Jul 2026 05:49:29 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:49:29 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:49:41 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" # buildkit
# Thu, 02 Jul 2026 05:49:41 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:49:41 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7e506ec396e165cc004363134ece7110907f8090022df57ecb9f3e0dbf24c72`  
		Last Modified: Thu, 02 Jul 2026 02:21:04 GMT  
		Size: 16.1 MB (16110061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72a48b4bd150718c49297698ccec616c8b6b03562517d5e9dff6d842ada5ac13`  
		Last Modified: Thu, 02 Jul 2026 02:21:07 GMT  
		Size: 145.9 MB (145894819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d894c9b548cc3cb7539ee16d5c8298fc9767b97635e21b5553e0e7252dcc3313`  
		Last Modified: Thu, 02 Jul 2026 02:21:03 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f16b0e69a840c5b548efd04bc387f656f96a6bb8984310b5103d72525742a04f`  
		Last Modified: Thu, 02 Jul 2026 02:21:03 GMT  
		Size: 2.3 KB (2283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1dc2e0f2dbdf8bda862b5a4231d31411522e9c7e0be3d6cdd9cde5d75f1845c`  
		Last Modified: Thu, 02 Jul 2026 05:49:59 GMT  
		Size: 47.9 MB (47862767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a9f78a7f3a8475f09486252efad335398a0bca8d3bf4ee5afa7e660efd6314c`  
		Last Modified: Thu, 02 Jul 2026 05:49:57 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-jammy` - unknown; unknown

```console
$ docker pull clojure@sha256:4c433b2e5680da1156374d9507f5953ae779ed8ff6bd29eb282356d4b97e3d52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6318032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:185b76b7728a73914f9cc3bc40b9c1b0a06dc8c6956ebc553049eb78dcd66157`

```dockerfile
```

-	Layers:
	-	`sha256:267b7a1fa76a8470e16220e7945c551b72c3d94406eb539270b6ac5abc30a140`  
		Last Modified: Thu, 02 Jul 2026 05:49:58 GMT  
		Size: 6.3 MB (6304524 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cb41e3214d1e6c7211c1b1555bd5bf22725ce0925ff4c9c2e808846f2d9cfcd9`  
		Last Modified: Thu, 02 Jul 2026 05:49:57 GMT  
		Size: 13.5 KB (13508 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-jammy` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:4b157a4c89adf0966783e92b8730ab2f4bee860b94912df432fe5da5cb86cffd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.1 MB (234090896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c472e0bb978b6effc137e6512beea707be2387f882cb1a2ef4a4900e31163bd`
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
# Thu, 02 Jul 2026 02:20:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 02:20:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 02:20:35 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 02 Jul 2026 02:20:35 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:20:35 GMT
ENV JAVA_VERSION=jdk-11.0.31+11
# Thu, 02 Jul 2026 02:20:42 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='1e9de64586b519c0a981319489257cabedd9457599f3823424a87c3158fbe939';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_x64_linux_hotspot_11.0.31_11.tar.gz';          ;;        arm64)          ESUM='257f4d39e060658fc2eb89a803ca43b3f337e64e253f2d94ebae1d85c9ef5f69';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.31_11.tar.gz';          ;;        armhf)          ESUM='3e0ff500a650a552adb2478895ba5de2b133da9b4b816fa76095969b4eec61ce';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_arm_linux_hotspot_11.0.31_11.tar.gz';          ;;        ppc64el)          ESUM='e473d10c3c44f67301fd90abd9e4b7ae312eae8a2399b333fcf4179daf35a743';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.31_11.tar.gz';          ;;        s390x)          ESUM='4d3709cdc03de1a00f14f530c2ebad1883d9bcc8a556fc419f083bec87b4687a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.31_11.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 02 Jul 2026 02:20:43 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 02 Jul 2026 02:20:43 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:20:43 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 02 Jul 2026 02:20:43 GMT
CMD ["jshell"]
# Thu, 02 Jul 2026 05:49:47 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:49:47 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:50:00 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" # buildkit
# Thu, 02 Jul 2026 05:50:00 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:50:00 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f6cba5828d5021fedc584eaceaebcb49548bbb3c1bc78b36937d83df6beb55a`  
		Last Modified: Thu, 02 Jul 2026 02:21:00 GMT  
		Size: 16.0 MB (16039862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00d33e890348a418b67e518a5731ee33f6e196e273a90a89778fd21501f3ac35`  
		Last Modified: Thu, 02 Jul 2026 02:21:04 GMT  
		Size: 142.6 MB (142588508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b61a4c2b7867372af7dde00633ea48d7520a2faf058b74f454ffd87d6c645f8b`  
		Last Modified: Thu, 02 Jul 2026 02:20:59 GMT  
		Size: 161.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed507c913156f1d9395acbd5915eb0a2bb85af7b85502500780e7184e0ded549`  
		Last Modified: Thu, 02 Jul 2026 02:20:53 GMT  
		Size: 2.3 KB (2283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad75bb3e305435c7ddaf4c5f3fe87153e8dbaf7f064dbeb10206e6e063d827ed`  
		Last Modified: Thu, 02 Jul 2026 05:50:17 GMT  
		Size: 47.8 MB (47846249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbb82b7a30ae817575c43e30c0847574ca6327495d58265f79ddfe3b0ca5c2dd`  
		Last Modified: Thu, 02 Jul 2026 05:50:16 GMT  
		Size: 617.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-jammy` - unknown; unknown

```console
$ docker pull clojure@sha256:75f86327980f022fe1938f3b1f242998417ee4f2adc2f9a4e046d093ebd8e40d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6324508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:407640cb0234a6208c68f2933c35cc04a2b8d9daf82b449aff1e18eb0e8d6b56`

```dockerfile
```

-	Layers:
	-	`sha256:a0a42a59dd9b75f4ff416b8387ad9d740ec24cd7b048bc16a02c4afc65b9fc6e`  
		Last Modified: Thu, 02 Jul 2026 05:50:16 GMT  
		Size: 6.3 MB (6310908 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:023100c856bb01499811a08ef26d1167b1a8a8696c4606ce32a9a54f97642c21`  
		Last Modified: Thu, 02 Jul 2026 05:50:16 GMT  
		Size: 13.6 KB (13600 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-jammy` - linux; ppc64le

```console
$ docker pull clojure@sha256:2adf4974dddfd8168390deede8a4e4fde6b47ab2c9b2a5acbe8ecc9532dd9d86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.2 MB (237163989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:219e2fee9bbb3f075a814d35bceae493f05f49f4bfb2f306487bb7c7bb248584`
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
ENV JAVA_VERSION=jdk-11.0.31+11
# Thu, 02 Jul 2026 02:15:50 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='1e9de64586b519c0a981319489257cabedd9457599f3823424a87c3158fbe939';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_x64_linux_hotspot_11.0.31_11.tar.gz';          ;;        arm64)          ESUM='257f4d39e060658fc2eb89a803ca43b3f337e64e253f2d94ebae1d85c9ef5f69';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.31_11.tar.gz';          ;;        armhf)          ESUM='3e0ff500a650a552adb2478895ba5de2b133da9b4b816fa76095969b4eec61ce';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_arm_linux_hotspot_11.0.31_11.tar.gz';          ;;        ppc64el)          ESUM='e473d10c3c44f67301fd90abd9e4b7ae312eae8a2399b333fcf4179daf35a743';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.31_11.tar.gz';          ;;        s390x)          ESUM='4d3709cdc03de1a00f14f530c2ebad1883d9bcc8a556fc419f083bec87b4687a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.31_11.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 02 Jul 2026 02:15:53 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 02 Jul 2026 02:15:54 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:15:54 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 02 Jul 2026 02:15:54 GMT
CMD ["jshell"]
# Thu, 02 Jul 2026 06:54:44 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 06:54:44 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 07:03:15 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" # buildkit
# Thu, 02 Jul 2026 07:03:16 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 07:03:16 GMT
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
	-	`sha256:4a9508f228e7e2cd216444b34fe8e5562d85ebc4b84223fa79f2ea2bc2db1324`  
		Last Modified: Thu, 02 Jul 2026 02:16:28 GMT  
		Size: 133.1 MB (133122680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3abd6a48a1321d16708ceed595d36c1b6bf1f277a8b9afabc215da20575c195a`  
		Last Modified: Thu, 02 Jul 2026 02:16:23 GMT  
		Size: 161.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1801f48f545655c881611ddaf9309ce3d9b577def187d8fef6b15d3d7947a0d4`  
		Last Modified: Thu, 02 Jul 2026 02:16:23 GMT  
		Size: 2.3 KB (2282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8774a59e01193f751c1f0aae5456f1da4cb9e3b136b0a25915040f9e584c5f72`  
		Last Modified: Thu, 02 Jul 2026 07:03:44 GMT  
		Size: 51.8 MB (51813753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:053877bca9140f2af20df26f339d950cdc941ffd15710489ef2b2e974ee9dd1e`  
		Last Modified: Thu, 02 Jul 2026 07:03:42 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-jammy` - unknown; unknown

```console
$ docker pull clojure@sha256:1fcee7b58c4c33b81a7374226b99a84cccf2678c3c73349ac87347d7ef583af7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6322678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d32b7d66fc243756134c1e5eb0afb051427521a835442be426338068e8d3fbf6`

```dockerfile
```

-	Layers:
	-	`sha256:a77bf0cee2ae44e90a78801169ee7a5fb24dac18e30b2813076b17f61ff6f6a8`  
		Last Modified: Thu, 02 Jul 2026 07:03:43 GMT  
		Size: 6.3 MB (6309132 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cf41dcad8efdb10f7ceb59291d1d54b5c6cb102ceb451dc979ec7382b9b5203e`  
		Last Modified: Thu, 02 Jul 2026 07:03:42 GMT  
		Size: 13.5 KB (13546 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-jammy` - linux; s390x

```console
$ docker pull clojure@sha256:b42f45e835fbd021fefb170a831dedbd4433b629cd2012408a7646efcfa20584
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.8 MB (218828338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c380fa4e8843d8ca394f4efd74d381f51fa20e05dab2bb2b298c244f0d0b1ae8`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 29 Jun 2026 10:41:48 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:41:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:41:48 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:41:49 GMT
ADD file:a7caac22d71edeca734e094edaefd29ba696f6b6850656befefab899becd4181 in / 
# Mon, 29 Jun 2026 10:41:49 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:10:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 02:10:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 02:10:58 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 02 Jul 2026 02:10:58 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:10:58 GMT
ENV JAVA_VERSION=jdk-11.0.31+11
# Thu, 02 Jul 2026 02:11:02 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='1e9de64586b519c0a981319489257cabedd9457599f3823424a87c3158fbe939';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_x64_linux_hotspot_11.0.31_11.tar.gz';          ;;        arm64)          ESUM='257f4d39e060658fc2eb89a803ca43b3f337e64e253f2d94ebae1d85c9ef5f69';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.31_11.tar.gz';          ;;        armhf)          ESUM='3e0ff500a650a552adb2478895ba5de2b133da9b4b816fa76095969b4eec61ce';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_arm_linux_hotspot_11.0.31_11.tar.gz';          ;;        ppc64el)          ESUM='e473d10c3c44f67301fd90abd9e4b7ae312eae8a2399b333fcf4179daf35a743';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.31_11.tar.gz';          ;;        s390x)          ESUM='4d3709cdc03de1a00f14f530c2ebad1883d9bcc8a556fc419f083bec87b4687a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.31_11.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 02 Jul 2026 02:11:04 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 02 Jul 2026 02:11:04 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:11:04 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 02 Jul 2026 02:11:04 GMT
CMD ["jshell"]
# Thu, 02 Jul 2026 05:44:00 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:44:00 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:47:11 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" # buildkit
# Thu, 02 Jul 2026 05:47:11 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:47:11 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:34e440c1d617a14c5bd409164ca055ea7353290a30638fa560b151e88ea9e046`  
		Last Modified: Mon, 29 Jun 2026 11:25:56 GMT  
		Size: 28.2 MB (28204131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd0ab1291237868d776f0ffdf677a2726bb545bf981296b0191faa1d43f439b5`  
		Last Modified: Thu, 02 Jul 2026 02:11:28 GMT  
		Size: 16.1 MB (16105333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b746af0a55a1f84b93bf12e116421f0ef2d07b598a4531ebc36dbc1b5d01585b`  
		Last Modified: Thu, 02 Jul 2026 02:11:30 GMT  
		Size: 126.7 MB (126662831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c19c58a5887ffa53a6b0477ac70c74e5a0134098aa004ad664fb96e4c920649c`  
		Last Modified: Thu, 02 Jul 2026 02:11:27 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e83e6a8f70d6413cc9d39aa3af8f8afa168e35278b047d9ece9f52b22049a0c`  
		Last Modified: Thu, 02 Jul 2026 02:11:27 GMT  
		Size: 2.3 KB (2283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f84e8ae1c5c50b9e84e9fed6193dee3cdf0ccc492d0c9dafb6df45389101394`  
		Last Modified: Thu, 02 Jul 2026 05:47:31 GMT  
		Size: 47.9 MB (47852953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfcba541390b0ad211a4ad696f0f78612be1f1f1969e5ddddbd949167a443675`  
		Last Modified: Thu, 02 Jul 2026 05:47:30 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-jammy` - unknown; unknown

```console
$ docker pull clojure@sha256:49df7678b7de2dc930f624bb6a16b59db5905fad6002f6773ee2f7cc27c27d52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6313959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:990e3d0ae28bd9c93dde156ae3d161a9267236cb5a664fa6f3adc41bfc58e720`

```dockerfile
```

-	Layers:
	-	`sha256:793c2f9fe819596de0c54de8c6686e7eca4ee09a44c239ee39c45f5edfb0098a`  
		Last Modified: Thu, 02 Jul 2026 05:47:30 GMT  
		Size: 6.3 MB (6300451 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:68b1aa4ffddf1b7091d9b603c46e4c44bf5afccf73cff86612db0d4459b4fa7e`  
		Last Modified: Thu, 02 Jul 2026 05:47:30 GMT  
		Size: 13.5 KB (13508 bytes)  
		MIME: application/vnd.in-toto+json
