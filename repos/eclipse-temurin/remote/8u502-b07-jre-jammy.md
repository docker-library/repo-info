## `eclipse-temurin:8u502-b07-jre-jammy`

```console
$ docker pull eclipse-temurin@sha256:ebfc215259978581f650a5b0ec9686072e5d3855721bb7421a441a839869a145
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `eclipse-temurin:8u502-b07-jre-jammy` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:8a61c03d360839234810e5a3a8567fba14e251013d20b3b8200218308f328549
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.2 MB (88181564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cac4b4047448618c0336d4060364bb0f31ca1f0637c696a98cb7184992fda507`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

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
ENV JAVA_VERSION=jdk8u502-b07
# Fri, 21 Aug 2026 18:22:39 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='f1a7bea0804bfa5627dac412fe7a0d751c4228592e356d6a32a30da54a48ed7a';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_x64_linux_hotspot_8u502b07.tar.gz';          ;;        arm64)          ESUM='4ffd3abaf65a47610096d9c25ea06f2439428f1c087d3e54eb518553a6115638';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64el)          ESUM='56fbe946d93afefd39353ff3fe0219e227fd4880267159ab48f95ac8ba25482d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Fri, 21 Aug 2026 18:22:39 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:22:39 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:22:39 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
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
	-	`sha256:fe283645af56cedfcb3fca26bb1f9fbb695b2b93f56d9ffcaaed03c895667817`  
		Last Modified: Fri, 21 Aug 2026 18:22:51 GMT  
		Size: 42.3 MB (42332717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35ad138a2648508acbf4b4d4ceeac7b0fa7c14fb1228d3811a34292d05158151`  
		Last Modified: Fri, 21 Aug 2026 18:22:50 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3aa4206d239a30b637c5fa88a676419fef506334ebdb3e2e9756b689c6d16018`  
		Last Modified: Fri, 21 Aug 2026 18:22:50 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u502-b07-jre-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:948dfaed6892fbde5d2788150caa928a5f753f752a051ed8d3210535d210ace7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3914364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50bab8a484c5cbd652687344bec73191639167403f349165f11aec5ddb092157`

```dockerfile
```

-	Layers:
	-	`sha256:0a7bb939042c4d8c6104b5c2b3d4d99b0ccbd07804a7014d3867724292524906`  
		Last Modified: Fri, 21 Aug 2026 18:22:50 GMT  
		Size: 3.9 MB (3893848 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:156395100852570887908c0abed730a20f0d3ca8cbbf39de842c35287e223700`  
		Last Modified: Fri, 21 Aug 2026 18:22:50 GMT  
		Size: 20.5 KB (20516 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8u502-b07-jre-jammy` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:9aacfd379319806fdb474723614f1a8abbfeca7eebaef48f8a9c95d63c07bab4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.0 MB (85020930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dfc5542da100577e36614d6db46495ca30130a400cf8376d29a2bd204f48e3a`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 01:31:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 01:31:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 01:31:36 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 01:31:36 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:31:36 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Wed, 09 Sep 2026 01:31:40 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='f1a7bea0804bfa5627dac412fe7a0d751c4228592e356d6a32a30da54a48ed7a';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_x64_linux_hotspot_8u502b07.tar.gz';          ;;        arm64)          ESUM='4ffd3abaf65a47610096d9c25ea06f2439428f1c087d3e54eb518553a6115638';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64el)          ESUM='56fbe946d93afefd39353ff3fe0219e227fd4880267159ab48f95ac8ba25482d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Wed, 09 Sep 2026 01:31:40 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 09 Sep 2026 01:31:40 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 09 Sep 2026 01:31:40 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c40c8339f16c562244bf9272a5f3a794f52b382c8a29034812b5bc1c24d91b3`  
		Last Modified: Wed, 09 Sep 2026 01:32:22 GMT  
		Size: 16.0 MB (16036375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bb8e5b39e9d01adec08bf95cde3d3510ecfc6353044915e80c7acef4a07169a`  
		Last Modified: Wed, 09 Sep 2026 01:32:23 GMT  
		Size: 41.3 MB (41299217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10e8bd45dc4102ddc53330c8874ec49c8b43268a71756e7c24851c4b543de8e2`  
		Last Modified: Wed, 09 Sep 2026 01:32:21 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4339834ed3ae355c82035898026570c59f1343f99c2a5d0c4373385727a07b4e`  
		Last Modified: Wed, 09 Sep 2026 01:32:21 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u502-b07-jre-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:72a67e3a3f49e82ad4e7f37f69d4278083330af217456664a2617c83f6590f4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3916475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9100935c9f744d08221fb523497773403069f2b5407ef409c4cb4b41c8b1bfc5`

```dockerfile
```

-	Layers:
	-	`sha256:295c0ed89af0f358b3e7f0e70cbc0bce32d8eabc6f5a7d8b32a221c686307dcc`  
		Last Modified: Wed, 09 Sep 2026 01:32:22 GMT  
		Size: 3.9 MB (3895848 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9beb5a6f8422ac1c664e33c7cb917e3ca04424719ce9d689542087928898fb36`  
		Last Modified: Wed, 09 Sep 2026 01:32:21 GMT  
		Size: 20.6 KB (20627 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8u502-b07-jre-jammy` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:1fdfb246304edbd312cbffac1e75b1fb825e8cc231170b97d38ea4876eaf679a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.0 MB (93970110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:489f110f7c2d085902af377eb161ac151de7a2ac6d79db537cc0650355c304c8`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

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
# Fri, 21 Aug 2026 20:27:22 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='f1a7bea0804bfa5627dac412fe7a0d751c4228592e356d6a32a30da54a48ed7a';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_x64_linux_hotspot_8u502b07.tar.gz';          ;;        arm64)          ESUM='4ffd3abaf65a47610096d9c25ea06f2439428f1c087d3e54eb518553a6115638';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64el)          ESUM='56fbe946d93afefd39353ff3fe0219e227fd4880267159ab48f95ac8ba25482d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Fri, 21 Aug 2026 20:27:23 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 20:27:23 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 20:27:23 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
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
	-	`sha256:3acef1b55ab44f3a91180efad9711f57c3ba09ac78b049af55c3d58e6213a147`  
		Last Modified: Fri, 21 Aug 2026 20:27:57 GMT  
		Size: 41.7 MB (41746440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5531603758c5f0d20dfd6b3e6b153f8a7091fa0cae2121bf2af4f18af23d8ca0`  
		Last Modified: Fri, 21 Aug 2026 20:27:55 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9c06cba247d0efe3e8e35256bb370534a4f03175b7c4ac7268aebfe7eba1e2f`  
		Last Modified: Fri, 21 Aug 2026 20:27:55 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u502-b07-jre-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:4a698a3e7800de44a9fa0ba43f21df93f2a9bb191bda78c151638994b1c2056f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3919165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a70a9ce88225edc576a6b3cf6af222ed380f2c1171c114c60bcb697819c421ee`

```dockerfile
```

-	Layers:
	-	`sha256:9e61cbba491166ed0593f4af6c5096aa444a1773d12affb9c2b0ea1e9eeee2d3`  
		Last Modified: Fri, 21 Aug 2026 20:27:55 GMT  
		Size: 3.9 MB (3898613 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6e13260ba1fe66531027c46e41189bf7890273d1cffc4792f9a5cab5cc3aa26b`  
		Last Modified: Fri, 21 Aug 2026 20:27:55 GMT  
		Size: 20.6 KB (20552 bytes)  
		MIME: application/vnd.in-toto+json
