## `clojure:temurin-17-tools-deps-1.12.6.1673`

```console
$ docker pull clojure@sha256:bac3cbaf8c5c11b93974ec4cfc82c161e33ab4d70feebe4d995fcf784e99c437
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-1.12.6.1673` - linux; amd64

```console
$ docker pull clojure@sha256:c06a78a4a3ca722ac21f48820cce6cfedde3783cf5f3e13f09b87e1ae5ccd316
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.6 MB (253615567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1f862d359d5cd3da98d426a63ef0cf5d6aaead502eb062cfdf585fb7af91535`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

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
# Fri, 21 Aug 2026 18:23:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:23:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:23:54 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:23:54 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 18:23:54 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Fri, 21 Aug 2026 18:24:00 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='be7668bc030d578b83d6d5ef9221d6d6729bbbca8cf94a7d52e16ac68b5a5a35';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20_8.tar.gz';          ;;        arm64)          ESUM='d143936f473a4cb24e3b0e247d6d0775769d55ec9775c339540e753059a8d77a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20_8.tar.gz';          ;;        armhf)          ESUM='543173615a7e6e8905d99c45f9d0caeb5faf1a6dcdc25cbb5337f53e7ef06c78';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_arm_linux_hotspot_17.0.20_8.tar.gz';          ;;        ppc64el)          ESUM='a14127c5577dc12e058459549e5388fd47ebd1b3d8441fbd23c4d931bdcebee9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20_8.tar.gz';          ;;        riscv64)          ESUM='bc36e8044c88df9f4ec2967c5277d1c8fae572378c12c0bac44dcae15d3af2f7';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_riscv64_linux_hotspot_17.0.20_8.tar.gz';          ;;        s390x)          ESUM='d5bbce66faa1482adb6ddcabc51d6c14b7c35cb11174e657d84ecb2177a4f6e9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 21 Aug 2026 18:24:01 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:24:01 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:24:01 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:24:01 GMT
CMD ["jshell"]
# Fri, 04 Sep 2026 00:02:25 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:02:25 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:02:44 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" # buildkit
# Fri, 04 Sep 2026 00:02:44 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:02:44 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:02:44 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:02:44 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4306d2deb5932a2eff77450116ab5954c6911ddca047ce4ce28c16dc4f5ef91a`  
		Last Modified: Fri, 21 Aug 2026 18:24:17 GMT  
		Size: 22.9 MB (22928456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef051fd32dba4f23e22e3a1be3f602ddc0a199ca61bcc767f56e7d9825956e7b`  
		Last Modified: Fri, 21 Aug 2026 18:24:19 GMT  
		Size: 145.8 MB (145832370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68d55e831f501337c3d5d9937c9502439928a2c66d36fb504916684be95a9976`  
		Last Modified: Fri, 21 Aug 2026 18:24:15 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b7049efea6c3928140c800c44bad9571b3236995d922b2a1161f2b9211d54be`  
		Last Modified: Fri, 21 Aug 2026 18:24:16 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:beff3f6d15af6d2d7874ae1caa03d94f132d6bbeec32301585f9b9c22a0d6730`  
		Last Modified: Fri, 04 Sep 2026 00:03:01 GMT  
		Size: 55.1 MB (55098268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8883f5543ab5db14c1ade18045696e454555b60175ccf9b08a86feb383933b41`  
		Last Modified: Fri, 04 Sep 2026 00:02:59 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38127b7fd74070ee2432eee0fa7a6b97f0dcadc40a071bbd82528ad37d6d256d`  
		Last Modified: Fri, 04 Sep 2026 00:02:59 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673` - unknown; unknown

```console
$ docker pull clojure@sha256:2f6efa413b5135a7089e7519cc9b6b8e1141de2d4295d9faa0334ef1b44a966f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5905557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e40e9d278fac13338c9dc5bd0b70941e0f7d09276e0a431b0a2b67a8014275e5`

```dockerfile
```

-	Layers:
	-	`sha256:a177a6eec840815a162bb50cf2c82c16f080e3acc549b9df805aecf10cd15933`  
		Last Modified: Fri, 04 Sep 2026 00:02:59 GMT  
		Size: 5.9 MB (5889329 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:65e57811837cde6d09d4a3269360736f4f843de6ec8d81119411ace7dd66de4d`  
		Last Modified: Fri, 04 Sep 2026 00:02:59 GMT  
		Size: 16.2 KB (16228 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.6.1673` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:4da4db1d2c0e0728319c61382f9a42d85435038da4e1f55b9b38490f2a0733ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.7 MB (252662998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69306e4307d1c8346215496b7076f336bf3ccf7273eb27e51b65228519483800`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

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
# Fri, 21 Aug 2026 18:27:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:27:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:27:06 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:27:06 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 18:27:06 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Fri, 21 Aug 2026 18:27:13 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='be7668bc030d578b83d6d5ef9221d6d6729bbbca8cf94a7d52e16ac68b5a5a35';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20_8.tar.gz';          ;;        arm64)          ESUM='d143936f473a4cb24e3b0e247d6d0775769d55ec9775c339540e753059a8d77a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20_8.tar.gz';          ;;        armhf)          ESUM='543173615a7e6e8905d99c45f9d0caeb5faf1a6dcdc25cbb5337f53e7ef06c78';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_arm_linux_hotspot_17.0.20_8.tar.gz';          ;;        ppc64el)          ESUM='a14127c5577dc12e058459549e5388fd47ebd1b3d8441fbd23c4d931bdcebee9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20_8.tar.gz';          ;;        riscv64)          ESUM='bc36e8044c88df9f4ec2967c5277d1c8fae572378c12c0bac44dcae15d3af2f7';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_riscv64_linux_hotspot_17.0.20_8.tar.gz';          ;;        s390x)          ESUM='d5bbce66faa1482adb6ddcabc51d6c14b7c35cb11174e657d84ecb2177a4f6e9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 21 Aug 2026 18:27:14 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:27:14 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:27:14 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:27:14 GMT
CMD ["jshell"]
# Fri, 04 Sep 2026 00:06:58 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:06:58 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:07:19 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" # buildkit
# Fri, 04 Sep 2026 00:07:19 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:07:19 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:07:19 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:07:19 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47052ec810013c81d3dedb7c43bc85b169882b614b5a96cc9f8abc32571ad924`  
		Last Modified: Fri, 21 Aug 2026 18:27:32 GMT  
		Size: 24.1 MB (24126604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e511629c7f9b45c4640851fc9d9f7992b10ec89857ee0787de947aa02e7a990`  
		Last Modified: Fri, 21 Aug 2026 18:27:34 GMT  
		Size: 144.7 MB (144655602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7e9b20a3c90f277b800f1811ff594ee37801e76b9c9494ec5bbabc4f72fe1f5`  
		Last Modified: Fri, 21 Aug 2026 18:27:30 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88f7f6f46c7e71aa2b6bc9cae36f5bf945dfd9d33fce8dd54b8d0213eb92b0b8`  
		Last Modified: Fri, 21 Aug 2026 18:27:31 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a2d72b46eabcdb699f0fc65cf8f8b07999434de3f21371bcb8a2ddf708aa96a`  
		Last Modified: Fri, 04 Sep 2026 00:07:36 GMT  
		Size: 55.0 MB (54989886 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fa3b2f2e487dd76e05d36c4756d17d8ba864ba6a5cc3c9943d5a3370315bed8`  
		Last Modified: Fri, 04 Sep 2026 00:07:34 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0282065581f1024b28074d195a91cf16f515904b4e00c8af1dd6eb90cc143285`  
		Last Modified: Fri, 04 Sep 2026 00:07:34 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673` - unknown; unknown

```console
$ docker pull clojure@sha256:39c17c65bd30bb8d4bcb255ac8c4a615879cdceb4bc7c3a4f9c7e400869d3c31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6043311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a8761dfb687b774fdf85865008c272e5814e7dad23f4932a53708b54b7d1185`

```dockerfile
```

-	Layers:
	-	`sha256:6ca1ca88e16622a16f84781fe017c5cd4f0dbd6247190d4fae792276030525b3`  
		Last Modified: Fri, 04 Sep 2026 00:07:34 GMT  
		Size: 6.0 MB (6026967 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:79329268fcf27780176bca9af9824080a7533aa3e92170ac427be86434ef6947`  
		Last Modified: Fri, 04 Sep 2026 00:07:34 GMT  
		Size: 16.3 KB (16344 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.6.1673` - linux; ppc64le

```console
$ docker pull clojure@sha256:98f4452f8653a8be059c91468a2b9339ea056fb67dec5136f16bf718932b9dfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.0 MB (264040656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:344af45d17a7b2d2446fd5fab475247cf548c258d9279e8db0a2a37506ebd6c2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

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
# Wed, 19 Aug 2026 21:12:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 19 Aug 2026 21:12:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 21:12:30 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 19 Aug 2026 21:12:30 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 21:12:30 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Fri, 21 Aug 2026 20:33:54 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='be7668bc030d578b83d6d5ef9221d6d6729bbbca8cf94a7d52e16ac68b5a5a35';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20_8.tar.gz';          ;;        arm64)          ESUM='d143936f473a4cb24e3b0e247d6d0775769d55ec9775c339540e753059a8d77a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20_8.tar.gz';          ;;        armhf)          ESUM='543173615a7e6e8905d99c45f9d0caeb5faf1a6dcdc25cbb5337f53e7ef06c78';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_arm_linux_hotspot_17.0.20_8.tar.gz';          ;;        ppc64el)          ESUM='a14127c5577dc12e058459549e5388fd47ebd1b3d8441fbd23c4d931bdcebee9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20_8.tar.gz';          ;;        riscv64)          ESUM='bc36e8044c88df9f4ec2967c5277d1c8fae572378c12c0bac44dcae15d3af2f7';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_riscv64_linux_hotspot_17.0.20_8.tar.gz';          ;;        s390x)          ESUM='d5bbce66faa1482adb6ddcabc51d6c14b7c35cb11174e657d84ecb2177a4f6e9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 21 Aug 2026 20:33:56 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 20:33:57 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 20:33:57 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 20:33:57 GMT
CMD ["jshell"]
# Fri, 04 Sep 2026 00:17:00 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:17:00 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:17:40 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" # buildkit
# Fri, 04 Sep 2026 00:17:41 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:17:42 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:17:42 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:17:42 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:9ce277f493517cc144a5fc2f41269e529e99b662f089df362b22f62d1fbb7436`  
		Last Modified: Mon, 17 Aug 2026 14:27:41 GMT  
		Size: 34.3 MB (34311195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d041d9a94fe02e49038880c229adf9a014464e2a8195cc8fb9e356ab07059a63`  
		Last Modified: Wed, 19 Aug 2026 21:13:15 GMT  
		Size: 24.1 MB (24051334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9fe6b3c27abf357bb7e36c29fbf3eebca17627dd908a9221cf8e3931b716066`  
		Last Modified: Fri, 21 Aug 2026 20:34:36 GMT  
		Size: 145.7 MB (145681726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f1d2cff13acd390bf5f4d7148718242ca44eb184c60bfdf20d7476100a04740`  
		Last Modified: Fri, 21 Aug 2026 20:34:32 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54e5a072d172f53d3bbb88b69423538bbe07bff7cc64ab5dba5d22832fcfe9ff`  
		Last Modified: Fri, 21 Aug 2026 20:34:32 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ce4b0129a968117de16c6ac055f647845a6448f81ed6dfa4f2edc8c032a8aa5`  
		Last Modified: Fri, 04 Sep 2026 00:18:17 GMT  
		Size: 60.0 MB (59992732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba7c0902615b26b67fbc6fc6fd306bc7ea41080b6d26f21c992f4aba2487dce7`  
		Last Modified: Fri, 04 Sep 2026 00:18:15 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e00b1b4443676ba3096ba1c5c3ef659703c7783a37b5d8364d439e5ddc1ae186`  
		Last Modified: Fri, 04 Sep 2026 00:18:15 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673` - unknown; unknown

```console
$ docker pull clojure@sha256:08c7ee1aa440552152613badd322d5639c6f4163cf841eb59ab0dfce977ef469
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (5956475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84f5b6167522af3038458afaa64518bca93c51ba7b5413762fba5257b6bb0a90`

```dockerfile
```

-	Layers:
	-	`sha256:2392bfa58859e2aca50993ffdc1fd5a0a08031fe3bd9a384c53b735e4f1b7a94`  
		Last Modified: Fri, 04 Sep 2026 00:18:15 GMT  
		Size: 5.9 MB (5940197 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:432201b02685ed414e94322d41d584a740dc01bbca361b61299b06c35b18e624`  
		Last Modified: Fri, 04 Sep 2026 00:18:15 GMT  
		Size: 16.3 KB (16278 bytes)  
		MIME: application/vnd.in-toto+json
