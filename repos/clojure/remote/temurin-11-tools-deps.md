## `clojure:temurin-11-tools-deps`

```console
$ docker pull clojure@sha256:6b36a4590d993b5249b4a8eb464004545df8dbef9b5b25cd658c98e537dd1a6d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-tools-deps` - linux; amd64

```console
$ docker pull clojure@sha256:e67a4dffe3b7b8de319e141351e9bd2cabd3f348cc5a06209c62b6ac49e2c2c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.7 MB (247659090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:664a78d2d0d81f78c5cc8a222b0f9964e3913313f260c4cc29d59ca38295ca35`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Fri, 21 Aug 2026 18:22:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:22:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:22:32 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:22:32 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 18:22:32 GMT
ENV JAVA_VERSION=jdk-11.0.32+9
# Fri, 21 Aug 2026 18:22:57 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='5906e0339e9322a688b2375eaf40666e00a16e008b0067b0a9f9e4b6c5033720';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_x64_linux_hotspot_11.0.32_9.tar.gz';          ;;        arm64)          ESUM='66a7d4af3572d920b0f1b01710ffa79888d4ddd1b784632e33a3d711aa7d1e63';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.32_9.tar.gz';          ;;        armhf)          ESUM='abe56bf1e4aa83a676b1a4b397e80f47ad686eed9aaef3cd007d2212cadc5fb0';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_arm_linux_hotspot_11.0.32_9.tar.gz';          ;;        ppc64el)          ESUM='e662ceae8e93c1754f31f444a2fc7089add9a77b62d8aea29af50409ca111cec';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.32_9.tar.gz';          ;;        s390x)          ESUM='9efb3c1430d363f7ba5b4262aa427ca30a5f466cd8107352223308fc73d1b0a3';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.32_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 21 Aug 2026 18:22:58 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:22:58 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:22:58 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:22:58 GMT
CMD ["jshell"]
# Fri, 04 Sep 2026 00:01:39 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:01:39 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:02:00 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" # buildkit
# Fri, 04 Sep 2026 00:02:00 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:02:00 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd9d2094b143697d6900985b6c1172677d28fa3f057a6140c54e808a81d3ec95`  
		Last Modified: Fri, 21 Aug 2026 18:22:45 GMT  
		Size: 16.9 MB (16946266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:779912ac3f773a051c3ef2b23ba9661aeadc0543c1882b8abccbb6b392bb09a8`  
		Last Modified: Fri, 21 Aug 2026 18:23:16 GMT  
		Size: 145.9 MB (145862728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f9ddf1e01dc9234518a8eaca6dff62108d5ca5f02bcca906595c022032f42a6`  
		Last Modified: Fri, 21 Aug 2026 18:23:12 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c058f339d3415d44ba3e6b4c7441dab8cf55c98b7cad128d91c50797cc22c54a`  
		Last Modified: Fri, 21 Aug 2026 18:23:12 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:973e8fd9e6e43eeb55f8e6f8919c6c5312370b66aec20f02eeed77bb5f2fa280`  
		Last Modified: Fri, 04 Sep 2026 00:02:15 GMT  
		Size: 55.1 MB (55094018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:452b815429db7ba205a9cd7c8f534bc99511f860ec0d2b60cf7b34048ad0542a`  
		Last Modified: Fri, 04 Sep 2026 00:02:14 GMT  
		Size: 617.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps` - unknown; unknown

```console
$ docker pull clojure@sha256:03d3f8dc76ef748ee57f095da0c1cefd28903a7e512a8c6e45d8088835098f70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5770669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb15ffe56474bc98913eab8852389d5c7cdfc1ae01a459095ff320cce26956e5`

```dockerfile
```

-	Layers:
	-	`sha256:7d8ddabf8c2778d5fdb63e70d58bf7d4624b672f1d8917c74930b4d4efdf6817`  
		Last Modified: Fri, 04 Sep 2026 00:02:14 GMT  
		Size: 5.8 MB (5756478 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f583dd1b106ba9a3545ab7f0c9e37c27438b29f6609b1847586d285907cc106a`  
		Last Modified: Fri, 04 Sep 2026 00:02:14 GMT  
		Size: 14.2 KB (14191 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:9eac933e79fcd38b4fd9ce56b2383c5c5dec1fca54432efc3c0afb17d39a4a04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.4 MB (243404011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f67935f90a3dcc49217c651e6194ae466fff2c1d74956068b26235ffb6aa7c2`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Aug 2026 18:26:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:26:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:26:22 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:26:22 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 18:26:22 GMT
ENV JAVA_VERSION=jdk-11.0.32+9
# Fri, 21 Aug 2026 18:26:28 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='5906e0339e9322a688b2375eaf40666e00a16e008b0067b0a9f9e4b6c5033720';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_x64_linux_hotspot_11.0.32_9.tar.gz';          ;;        arm64)          ESUM='66a7d4af3572d920b0f1b01710ffa79888d4ddd1b784632e33a3d711aa7d1e63';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.32_9.tar.gz';          ;;        armhf)          ESUM='abe56bf1e4aa83a676b1a4b397e80f47ad686eed9aaef3cd007d2212cadc5fb0';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_arm_linux_hotspot_11.0.32_9.tar.gz';          ;;        ppc64el)          ESUM='e662ceae8e93c1754f31f444a2fc7089add9a77b62d8aea29af50409ca111cec';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.32_9.tar.gz';          ;;        s390x)          ESUM='9efb3c1430d363f7ba5b4262aa427ca30a5f466cd8107352223308fc73d1b0a3';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.32_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 21 Aug 2026 18:26:29 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:26:29 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:26:29 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:26:29 GMT
CMD ["jshell"]
# Fri, 04 Sep 2026 00:06:05 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:06:05 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:06:25 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" # buildkit
# Fri, 04 Sep 2026 00:06:25 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:06:25 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2918bba2a550a8afb90d38ba85e2803fa5ba5ac86fcbe232e5244aa5c74ed3ea`  
		Last Modified: Fri, 21 Aug 2026 18:26:46 GMT  
		Size: 17.0 MB (16951764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbe3891b5e569c6a1fc722bcdb18639c1d40530f198df2d9ac62e4c7d75429ca`  
		Last Modified: Fri, 21 Aug 2026 18:26:49 GMT  
		Size: 142.6 MB (142575704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f5cbb9d56cb5a562327893ff8eb70826ccfa8033ffc868a0e6ac7b8dfaf7a2c`  
		Last Modified: Fri, 21 Aug 2026 18:26:45 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f7e089ca72e5f28fd6ce7c37167adc1aa080769780544c1461ebbddc1c59a97`  
		Last Modified: Fri, 21 Aug 2026 18:26:45 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d76a0c07c53bfa7b3f76a3185b9bc5d8ba73b00c0f05faf14fb45f1d29d8a303`  
		Last Modified: Fri, 04 Sep 2026 00:06:42 GMT  
		Size: 55.0 MB (54986035 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:822b9186aeb7acfe86d31c28bb88a3c20e1c4c055f6ff405148dcc0bd8cc1355`  
		Last Modified: Fri, 04 Sep 2026 00:06:41 GMT  
		Size: 617.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps` - unknown; unknown

```console
$ docker pull clojure@sha256:38c30462394a203b91f019047dd0eafd330ff0adc66f16ec622a087cc049c18e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5777991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d12e87bbf3d981323fd5da7e9b1931a75cf02b14f2daf3629fdc4099a4868660`

```dockerfile
```

-	Layers:
	-	`sha256:cc66655757a7f0d38a7d99a4156e6ff056dd82a4acf553d4d5f6d49f8002cb1d`  
		Last Modified: Fri, 04 Sep 2026 00:06:41 GMT  
		Size: 5.8 MB (5763684 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9080892ac4ff7099bf2c709820fd5bf3722d7e95a1717ffaec9ae0878d4a5d76`  
		Last Modified: Fri, 04 Sep 2026 00:06:41 GMT  
		Size: 14.3 KB (14307 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps` - linux; ppc64le

```console
$ docker pull clojure@sha256:d35d4af555ae8402b3b82cb55803d9c3f6a8809187a0c37a9d344ccb403f8be0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.2 MB (246173984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:609e46c92e8b18e28f202247213831de7fda3542d4ac2a47aab35fec9ed6bcb9`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 17 Aug 2026 13:37:16 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:37:16 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:37:16 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:37:19 GMT
ADD file:2c1f3ca3b8968d5c5bcce4fb1290d9ca7224bbde9578f0051bf2d5493b3b6481 in / 
# Mon, 17 Aug 2026 13:37:20 GMT
CMD ["/bin/bash"]
# Wed, 19 Aug 2026 21:04:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 19 Aug 2026 21:04:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 21:04:45 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 19 Aug 2026 21:04:45 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 21:04:45 GMT
ENV JAVA_VERSION=jdk-11.0.32+9
# Fri, 21 Aug 2026 20:29:10 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='5906e0339e9322a688b2375eaf40666e00a16e008b0067b0a9f9e4b6c5033720';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_x64_linux_hotspot_11.0.32_9.tar.gz';          ;;        arm64)          ESUM='66a7d4af3572d920b0f1b01710ffa79888d4ddd1b784632e33a3d711aa7d1e63';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.32_9.tar.gz';          ;;        armhf)          ESUM='abe56bf1e4aa83a676b1a4b397e80f47ad686eed9aaef3cd007d2212cadc5fb0';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_arm_linux_hotspot_11.0.32_9.tar.gz';          ;;        ppc64el)          ESUM='e662ceae8e93c1754f31f444a2fc7089add9a77b62d8aea29af50409ca111cec';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.32_9.tar.gz';          ;;        s390x)          ESUM='9efb3c1430d363f7ba5b4262aa427ca30a5f466cd8107352223308fc73d1b0a3';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.32_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 21 Aug 2026 20:29:12 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 20:29:13 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 20:29:13 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 20:29:13 GMT
CMD ["jshell"]
# Fri, 04 Sep 2026 00:11:47 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:11:47 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:12:39 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" # buildkit
# Fri, 04 Sep 2026 00:12:40 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:12:40 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:9ce277f493517cc144a5fc2f41269e529e99b662f089df362b22f62d1fbb7436`  
		Last Modified: Mon, 17 Aug 2026 14:27:41 GMT  
		Size: 34.3 MB (34311195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35c0227d1187b375d88601e313d4014f4e494629dfe78be3f24fd0cd219d7619`  
		Last Modified: Wed, 19 Aug 2026 21:05:13 GMT  
		Size: 18.8 MB (18764596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3275e9eac2b6a7160725973882fdf4cc8790df98d3e8b8c24c65528c66e8d63e`  
		Last Modified: Fri, 21 Aug 2026 20:29:48 GMT  
		Size: 133.1 MB (133105433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a51ece8ac67103a3865c9ae71758d60b098ada24754540bf60b5fe51e1cf0de`  
		Last Modified: Fri, 21 Aug 2026 20:29:45 GMT  
		Size: 162.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05802419635ad6f67e2fde2f863606f9be44e5d18b79030383c11ae117774421`  
		Last Modified: Fri, 21 Aug 2026 20:29:45 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:633b8438f008eb6a78f765759f466c1925f484bf1588cfb77ef8ea4086437171`  
		Last Modified: Fri, 04 Sep 2026 00:13:22 GMT  
		Size: 60.0 MB (59989486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:800ba9936f7469b99f493826b176029366c4491b32a8535e352e425504488a98`  
		Last Modified: Fri, 04 Sep 2026 00:13:20 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps` - unknown; unknown

```console
$ docker pull clojure@sha256:a752a82711a49670a35bfa184bb473de682a302e829f9beb8ed1dc0a7427a1a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5775348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8c330cf070ff63e6f9f3f511ac264b60e5675c04210f9b74bee3c39e78b9192`

```dockerfile
```

-	Layers:
	-	`sha256:feb4f7fe42a50d47a4a7daf19ae65844cd448c873c121a0b5578a3513c2eca90`  
		Last Modified: Fri, 04 Sep 2026 00:13:20 GMT  
		Size: 5.8 MB (5761108 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8a8f7d437627b7f55e77eb45e5cf1a8584cadbf18a933addbc9e41cb4da588f9`  
		Last Modified: Fri, 04 Sep 2026 00:13:20 GMT  
		Size: 14.2 KB (14240 bytes)  
		MIME: application/vnd.in-toto+json
