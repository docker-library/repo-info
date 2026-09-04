## `clojure:temurin-11-jammy`

```console
$ docker pull clojure@sha256:6aa5ba38b74e2ca31776ab68711f8bab2052938222dc2e9f834eb05838239f80
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-jammy` - linux; amd64

```console
$ docker pull clojure@sha256:1801edc715b89321edf6b1df161fc3811212001b5030b8ff3a8e1acc25f8681b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.4 MB (242378299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfde85198cac32669c259922b03406c7f16171bd837bc25aeb6fe0c0835c5ca9`
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
# Fri, 21 Aug 2026 18:22:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:22:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:22:37 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:22:37 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 18:22:37 GMT
ENV JAVA_VERSION=jdk-11.0.32+9
# Fri, 21 Aug 2026 18:23:04 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='5906e0339e9322a688b2375eaf40666e00a16e008b0067b0a9f9e4b6c5033720';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_x64_linux_hotspot_11.0.32_9.tar.gz';          ;;        arm64)          ESUM='66a7d4af3572d920b0f1b01710ffa79888d4ddd1b784632e33a3d711aa7d1e63';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.32_9.tar.gz';          ;;        armhf)          ESUM='abe56bf1e4aa83a676b1a4b397e80f47ad686eed9aaef3cd007d2212cadc5fb0';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_arm_linux_hotspot_11.0.32_9.tar.gz';          ;;        ppc64el)          ESUM='e662ceae8e93c1754f31f444a2fc7089add9a77b62d8aea29af50409ca111cec';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.32_9.tar.gz';          ;;        s390x)          ESUM='9efb3c1430d363f7ba5b4262aa427ca30a5f466cd8107352223308fc73d1b0a3';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.32_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 21 Aug 2026 18:23:05 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:23:05 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:23:05 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:23:05 GMT
CMD ["jshell"]
# Fri, 04 Sep 2026 00:01:37 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:01:37 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:01:56 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" # buildkit
# Fri, 04 Sep 2026 00:01:56 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:01:56 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e51bf88911d0dce08f10663eed84dbdc813c20c4e7da75f72097f8d3662ef412`  
		Last Modified: Fri, 21 Aug 2026 18:22:51 GMT  
		Size: 16.1 MB (16109314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa1cc0967495063559749e9f76673921df615af099290c3541108288dea7e790`  
		Last Modified: Fri, 21 Aug 2026 18:23:23 GMT  
		Size: 145.9 MB (145862846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37a80fb69168ac0d8d02458d379d17a45f4715950eb983ad85256dc215cca687`  
		Last Modified: Fri, 21 Aug 2026 18:23:20 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d926e10fa150da644ceb79be94a8c1c982eb5c89448bf248b6492da42b1e5c89`  
		Last Modified: Fri, 21 Aug 2026 18:23:20 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f4d727618b2e80a8dc6b7dd85b535853ca9e4c133ab305407fb74cc0a7a7fb8`  
		Last Modified: Fri, 04 Sep 2026 00:02:13 GMT  
		Size: 50.7 MB (50665925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b27f9a1d8635608000c76973eaeb536a27ac8882efe626ba08f6e1a68702cfa7`  
		Last Modified: Fri, 04 Sep 2026 00:02:11 GMT  
		Size: 617.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-jammy` - unknown; unknown

```console
$ docker pull clojure@sha256:1370bf1fc39b073096d1779072f755ef28d88a4d11b2fa0c288991d740b43ccc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6318029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cc53ac867173253555fcc64aba7b61c8f6b2090ce4ef08fd6adfd699a022c11`

```dockerfile
```

-	Layers:
	-	`sha256:9d388bd360571181d5bf4bd06fde4f1e56d533351a3ff9858e3c2d801657a68e`  
		Last Modified: Fri, 04 Sep 2026 00:02:11 GMT  
		Size: 6.3 MB (6304522 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b45c62443bb1ba9ff34463f67e7b367ad19ff629849c208e5d0c2a0d30d7739`  
		Last Modified: Fri, 04 Sep 2026 00:02:11 GMT  
		Size: 13.5 KB (13507 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-jammy` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:de8814619b1cca5963c997396780507aa5689f4448e2c8c8b6fd9a3e459b9e3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.8 MB (236831778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08855b8eb84ecb040b76a8a8a79f2264efc33495b683ae857830dc47db0c2b9f`
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
# Fri, 21 Aug 2026 18:26:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:26:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:26:23 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:26:23 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 18:26:23 GMT
ENV JAVA_VERSION=jdk-11.0.32+9
# Fri, 21 Aug 2026 18:26:30 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='5906e0339e9322a688b2375eaf40666e00a16e008b0067b0a9f9e4b6c5033720';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_x64_linux_hotspot_11.0.32_9.tar.gz';          ;;        arm64)          ESUM='66a7d4af3572d920b0f1b01710ffa79888d4ddd1b784632e33a3d711aa7d1e63';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.32_9.tar.gz';          ;;        armhf)          ESUM='abe56bf1e4aa83a676b1a4b397e80f47ad686eed9aaef3cd007d2212cadc5fb0';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_arm_linux_hotspot_11.0.32_9.tar.gz';          ;;        ppc64el)          ESUM='e662ceae8e93c1754f31f444a2fc7089add9a77b62d8aea29af50409ca111cec';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.32_9.tar.gz';          ;;        s390x)          ESUM='9efb3c1430d363f7ba5b4262aa427ca30a5f466cd8107352223308fc73d1b0a3';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.32_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 21 Aug 2026 18:26:32 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:26:32 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:26:32 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:26:32 GMT
CMD ["jshell"]
# Fri, 04 Sep 2026 00:05:17 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:05:17 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:05:38 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" # buildkit
# Fri, 04 Sep 2026 00:05:38 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:05:38 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ce57e5a0e6137f395e0cb976591246a29d765c7028cdc205aa3ab9309c90eb5`  
		Last Modified: Fri, 21 Aug 2026 18:26:49 GMT  
		Size: 16.0 MB (16039301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51653f4cbaef72a782861aee820de76324b9a2f7d979249760e716bdadb3c925`  
		Last Modified: Fri, 21 Aug 2026 18:26:52 GMT  
		Size: 142.6 MB (142575271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:478e0d13b45816ac56814484c348b8629767bb9bd47743afa3f57936fc156c73`  
		Last Modified: Fri, 21 Aug 2026 18:26:48 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:333c62c4d5d0ad212f80bc35c48472cdc7fd8a09c4f5de626b8f653e5c61549d`  
		Last Modified: Fri, 21 Aug 2026 18:26:48 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdbe356bd219b95ea80a2235825e54c4ae650accfbb023c2e0e05eda04f4d448`  
		Last Modified: Fri, 04 Sep 2026 00:05:54 GMT  
		Size: 50.6 MB (50593482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc579c358e0517d69649257705e38ebb8323a417f6b8f8d659847abd2cdc6a74`  
		Last Modified: Fri, 04 Sep 2026 00:05:53 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-jammy` - unknown; unknown

```console
$ docker pull clojure@sha256:64f22ea7624ce8a683e207c477d5af6a78966da1818d14487d8d7083d3dfc9a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6324503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1997152877be36da6252a3c33fe9eff186ddc3589696630c9475ed3cc54651b`

```dockerfile
```

-	Layers:
	-	`sha256:24325e61c24334fe5e4751c2a87955afa589145e7d859214647de522d42529fc`  
		Last Modified: Fri, 04 Sep 2026 00:05:53 GMT  
		Size: 6.3 MB (6310906 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b1a08d27ad1862b4b49f3595174f71e135206dfd1e52282959b81f7b25df85c8`  
		Last Modified: Fri, 04 Sep 2026 00:05:52 GMT  
		Size: 13.6 KB (13597 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-jammy` - linux; ppc64le

```console
$ docker pull clojure@sha256:9b8a66e9838abb421320a2ab4999b4f8db4e4d3f406e2d13988a06f2c69c29d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.2 MB (240211452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff826906e79cb47058bab6ab242502ea0245aed0df91fc8f322803192ab78c48`
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
ENV JAVA_VERSION=jdk-11.0.32+9
# Fri, 21 Aug 2026 20:30:07 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='5906e0339e9322a688b2375eaf40666e00a16e008b0067b0a9f9e4b6c5033720';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_x64_linux_hotspot_11.0.32_9.tar.gz';          ;;        arm64)          ESUM='66a7d4af3572d920b0f1b01710ffa79888d4ddd1b784632e33a3d711aa7d1e63';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.32_9.tar.gz';          ;;        armhf)          ESUM='abe56bf1e4aa83a676b1a4b397e80f47ad686eed9aaef3cd007d2212cadc5fb0';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_arm_linux_hotspot_11.0.32_9.tar.gz';          ;;        ppc64el)          ESUM='e662ceae8e93c1754f31f444a2fc7089add9a77b62d8aea29af50409ca111cec';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.32_9.tar.gz';          ;;        s390x)          ESUM='9efb3c1430d363f7ba5b4262aa427ca30a5f466cd8107352223308fc73d1b0a3';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.32_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 21 Aug 2026 20:30:10 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 20:30:10 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 20:30:10 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 20:30:10 GMT
CMD ["jshell"]
# Fri, 04 Sep 2026 00:10:48 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:10:48 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:11:40 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" # buildkit
# Fri, 04 Sep 2026 00:11:40 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:11:40 GMT
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
	-	`sha256:5e526870f5dc702aa139a38ce9ac8a6b3a47c4e428a51581442b44a0bf1e218c`  
		Last Modified: Fri, 21 Aug 2026 20:30:48 GMT  
		Size: 133.1 MB (133104481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:163daaf4273d46cdf463cdab47e8f82c7061ed83b599c408bbb951dccf288a02`  
		Last Modified: Fri, 21 Aug 2026 20:30:44 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da566e50a4958acea4dad42fa456e7da47e0dfa29e81a28f9a4d663d66f021f3`  
		Last Modified: Fri, 21 Aug 2026 20:30:44 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:531c42a92e06b9c4637dab52807dd0d305bbd1cdd57ab25f3f6574ea8160222a`  
		Last Modified: Fri, 04 Sep 2026 00:12:27 GMT  
		Size: 54.9 MB (54882620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e5d1928d0fc2aa47a5f1aca837c0ce8bd6bdf3639647f3428043a547fc0104e`  
		Last Modified: Fri, 04 Sep 2026 00:12:26 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-jammy` - unknown; unknown

```console
$ docker pull clojure@sha256:7ebafc8d3769773cbc16aeaaf0009b0ae8e70a2a3f326f032e23648b3de1ef98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6322674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4490ab42fef462b074f1c6d1206e9dbca925aa1263af5727794dfad3f1f43aa5`

```dockerfile
```

-	Layers:
	-	`sha256:2ee59307065b1f811b103ee5d8a7f61b7e2e6bf6d585a7588fc0c418a6895bc6`  
		Last Modified: Fri, 04 Sep 2026 00:12:26 GMT  
		Size: 6.3 MB (6309130 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:735f43acc62b504e7e09b717c2da327a7effd92d03df6b5586f9082433162a9e`  
		Last Modified: Fri, 04 Sep 2026 00:12:25 GMT  
		Size: 13.5 KB (13544 bytes)  
		MIME: application/vnd.in-toto+json
