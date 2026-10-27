## `jruby:9-jdk8`

```console
$ docker pull jruby@sha256:95b63065e22d4639c17f0d374263d7a8c5defc443ec63258e6f81716f7a32c0a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `jruby:9-jdk8` - linux; amd64

```console
$ docker pull jruby@sha256:2c982c1a820d2e18b44d01286d6dcfcbfa34da50c5bf145a7bbf636047473f84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.8 MB (140813519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b65936abafc4c34194675e5b9042d2db64e17f7c03fd71c375b166961b3e2837`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["irb"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:11:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 26 Oct 2026 23:11:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:11:14 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 26 Oct 2026 23:11:14 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:11:14 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Mon, 26 Oct 2026 23:11:17 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='9c70e102f527ac674ac2fe9c7d47b9a04e2d19842ba5ab8e9b33f368bbadfaea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_linux_hotspot_8u504b01.tar.gz';          ;;        arm64)          ESUM='57b7ed8af9d48542bb49ff7894448040b17bea0a48b41677d11ecaec6129768d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        armhf)          ESUM='b3e720d6515ec36b7de8a885e7e59a9b41968038644167aaff9c88d98b5e2aa7';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_arm_linux_hotspot_8u504b01.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='9ab4f48f91c5e140c732cef76a332989aeef9df7a19b2436de7833ef9d7d8960';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Mon, 26 Oct 2026 23:11:17 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Mon, 26 Oct 2026 23:11:17 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:11:17 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 27 Oct 2026 00:24:50 GMT
RUN apt-get update && apt-get install -y libc6-dev make --no-install-recommends && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 00:24:51 GMT
ENV JRUBY_VERSION=9.4.15.0
# Tue, 27 Oct 2026 00:24:51 GMT
ENV JRUBY_SHA256=c8b8c5a7a1581fdba3ba73f7c375f793f6528117b444cc6baf6fb29bbcf9696d
# Tue, 27 Oct 2026 00:24:51 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1 # buildkit
# Tue, 27 Oct 2026 00:24:51 GMT
ENV PATH=/opt/jruby/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:24:51 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc # buildkit
# Tue, 27 Oct 2026 00:24:57 GMT
RUN gem install bundler rake net-telnet xmlrpc # buildkit
# Tue, 27 Oct 2026 00:24:57 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 27 Oct 2026 00:24:57 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 27 Oct 2026 00:24:57 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:24:57 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME" # buildkit
# Tue, 27 Oct 2026 00:24:57 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37f262eb0d42c498d032f728e087e799e95798a78931fddbc98b6b69d668349d`  
		Last Modified: Mon, 26 Oct 2026 23:11:29 GMT  
		Size: 16.1 MB (16115733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03225205e92df7cbfb7ee00d10c153a7d94583fe96d1cd1d6f8d2a1884820ccd`  
		Last Modified: Mon, 26 Oct 2026 23:11:30 GMT  
		Size: 55.2 MB (55193977 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e034287013d6c1dd4e7e33991aa89025b200f155a7d532872b24b4114a2068d9`  
		Last Modified: Mon, 26 Oct 2026 23:11:28 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28727715dec4bf0fc17ed2cfa888f400c1c139f3e19a4b8c45454c19ca4aec07`  
		Last Modified: Mon, 26 Oct 2026 23:11:28 GMT  
		Size: 2.5 KB (2484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d730ee9f769d7233a8e9cf40f5b32bae4ccd9b435ba20ca51f445116fad5649`  
		Last Modified: Tue, 27 Oct 2026 00:25:08 GMT  
		Size: 5.7 MB (5658115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38e9b9217a747d60cc406f6b5c93f78d5ba2b74eba3fbade1eb78e0d406144eb`  
		Last Modified: Tue, 27 Oct 2026 00:25:09 GMT  
		Size: 32.8 MB (32793249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:272d235b7c5d62ce5e3b3441c62522eb8e68fc6e3e93a19a86a61d4a0f455d66`  
		Last Modified: Tue, 27 Oct 2026 00:25:06 GMT  
		Size: 199.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddfa712d4abd87d67bdbce0065058852875246dd9943ffb5bb0e444791bb9e38`  
		Last Modified: Tue, 27 Oct 2026 00:25:08 GMT  
		Size: 1.3 MB (1297006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8aee8fcaf27adec072f63d5015ffbd57193b67d63c5c6255cc9fd83a34ee08be`  
		Last Modified: Tue, 27 Oct 2026 00:25:09 GMT  
		Size: 142.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jruby:9-jdk8` - unknown; unknown

```console
$ docker pull jruby@sha256:ac05e1cf519267e860c860fca45e17e83491c767bf1561365e22c3860020c294
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5501352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11a6793d9575c68810260d51a01548be076a6ce6db81de0b23ed29820705c53e`

```dockerfile
```

-	Layers:
	-	`sha256:f4771f0fc32dda33b3daf475c60cded310224b0d403be57bf03325a44acaa2d7`  
		Last Modified: Tue, 27 Oct 2026 00:25:08 GMT  
		Size: 5.5 MB (5481108 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:52f2fc640f34d1ce47d006329ad85a441857bca9dc981111bd086ac80a695ecf`  
		Last Modified: Tue, 27 Oct 2026 00:25:08 GMT  
		Size: 20.2 KB (20244 bytes)  
		MIME: application/vnd.in-toto+json

### `jruby:9-jdk8` - linux; arm64 variant v8

```console
$ docker pull jruby@sha256:d83f09b7d1911ac6b8b1741d390e3b590855b0a07215a16bc29f6eb1eb92338d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.6 MB (136612693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e193b3fcfac7950cf5581ffaa4db5583f43b4bbb1efbee7af45865331af2353`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["irb"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:50 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:50 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:52 GMT
ADD file:6efa877f019ce1c165e045c546c059568465dad040d65f7797e1bbbf530bed3e in / 
# Sun, 25 Oct 2026 20:10:53 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:15:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 26 Oct 2026 23:15:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:15:26 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 26 Oct 2026 23:15:26 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:15:26 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Mon, 26 Oct 2026 23:15:30 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='9c70e102f527ac674ac2fe9c7d47b9a04e2d19842ba5ab8e9b33f368bbadfaea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_linux_hotspot_8u504b01.tar.gz';          ;;        arm64)          ESUM='57b7ed8af9d48542bb49ff7894448040b17bea0a48b41677d11ecaec6129768d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        armhf)          ESUM='b3e720d6515ec36b7de8a885e7e59a9b41968038644167aaff9c88d98b5e2aa7';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_arm_linux_hotspot_8u504b01.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='9ab4f48f91c5e140c732cef76a332989aeef9df7a19b2436de7833ef9d7d8960';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Mon, 26 Oct 2026 23:15:30 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Mon, 26 Oct 2026 23:15:30 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:15:30 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 27 Oct 2026 00:24:16 GMT
RUN apt-get update && apt-get install -y libc6-dev make --no-install-recommends && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 00:24:17 GMT
ENV JRUBY_VERSION=9.4.15.0
# Tue, 27 Oct 2026 00:24:17 GMT
ENV JRUBY_SHA256=c8b8c5a7a1581fdba3ba73f7c375f793f6528117b444cc6baf6fb29bbcf9696d
# Tue, 27 Oct 2026 00:24:17 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1 # buildkit
# Tue, 27 Oct 2026 00:24:17 GMT
ENV PATH=/opt/jruby/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:24:17 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc # buildkit
# Tue, 27 Oct 2026 00:24:23 GMT
RUN gem install bundler rake net-telnet xmlrpc # buildkit
# Tue, 27 Oct 2026 00:24:23 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 27 Oct 2026 00:24:23 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 27 Oct 2026 00:24:23 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:24:23 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME" # buildkit
# Tue, 27 Oct 2026 00:24:23 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e3ca4c49b782bb2119d52ea9c14492ba6cefb5661036b95abe0ac36bcf8c75a`  
		Last Modified: Mon, 26 Oct 2026 23:15:43 GMT  
		Size: 16.1 MB (16050220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00fc317bad56438fd66e5be95cfa173131dd8e89ecce6cea4fcf63ed8943a0be`  
		Last Modified: Mon, 26 Oct 2026 23:15:44 GMT  
		Size: 54.3 MB (54259531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:350379bf905bd4af7afe33a3b0b37e506771afc50467e53c635925c130b1c93e`  
		Last Modified: Mon, 26 Oct 2026 23:15:42 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30ccf4a0fe1977327c4209a52fc4bd0e65a5ae9780d210dd75a58d16a872807b`  
		Last Modified: Mon, 26 Oct 2026 23:15:42 GMT  
		Size: 2.5 KB (2484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57ef890bc7d2fdb21d7e9aeb7dbe7bafb5708bef3f0db3d8080c910cc87eaa81`  
		Last Modified: Tue, 27 Oct 2026 00:24:34 GMT  
		Size: 4.5 MB (4525174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:905d5bc8756117447a4a50353b29c5f3a056d0758689d6f3b4fb0074e1b4f4b2`  
		Last Modified: Tue, 27 Oct 2026 00:24:35 GMT  
		Size: 32.8 MB (32793203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a0c58c3f0359b44b036461709a7a16b69d71e7216f5b46acebfbb4a7a75f8d9`  
		Last Modified: Tue, 27 Oct 2026 00:24:34 GMT  
		Size: 199.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c4ae326d743879ff38713343fb4e0061fbd75716414cbfe824b46f9e1096ba6`  
		Last Modified: Tue, 27 Oct 2026 00:24:34 GMT  
		Size: 1.3 MB (1297007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3aa79ad6cba07a3e98b0b5ea72831926db18696e71a5f5f0b6c567577e2319d0`  
		Last Modified: Tue, 27 Oct 2026 00:24:35 GMT  
		Size: 141.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jruby:9-jdk8` - unknown; unknown

```console
$ docker pull jruby@sha256:428773b3aaa6f792f22d5b80fffd1c79159d20df75d8bd498e40e51e3c968a3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5473743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f1401789c2a0a69966b7fe64524e4c4d7bf0cc46e9f23566905f9898d8bc1e5`

```dockerfile
```

-	Layers:
	-	`sha256:b387e5e4bfdeb33b212f073c4ec71bc9a4704c86f51c72e4572053878eb935a2`  
		Last Modified: Tue, 27 Oct 2026 00:24:34 GMT  
		Size: 5.5 MB (5453287 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3adb9f8d9696d6e614a6fc25992907b8a45ebb541ef01b933166a6473e210d92`  
		Last Modified: Tue, 27 Oct 2026 00:24:34 GMT  
		Size: 20.5 KB (20456 bytes)  
		MIME: application/vnd.in-toto+json
