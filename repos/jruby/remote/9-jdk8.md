## `jruby:9-jdk8`

```console
$ docker pull jruby@sha256:2e307383257c6573c3f5f310c9dc71ec91c4ebe13938653dd301cfb40811ed48
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `jruby:9-jdk8` - linux; amd64

```console
$ docker pull jruby@sha256:f7011f21d5dd44d6141b2b5ff3b34ac371205651219dc625c83420b154016010
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.8 MB (140847303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9296f809d8ad13a42385cc32eaf04d93393f06fdf22eb3e4145dff79ea2c8b4a`
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
# Mon, 09 Nov 2026 23:16:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 09 Nov 2026 23:16:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Nov 2026 23:16:22 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 09 Nov 2026 23:16:22 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 09 Nov 2026 23:16:22 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Mon, 09 Nov 2026 23:16:26 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='fb3bfa869012419b562bb4235d0d83ec4f8c1dda62ae432ba20c6c3a7e43f7e4';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u512b09.tar.gz';          ;;        arm64)          ESUM='01263df22c4553f63146bbae807e70cd4628dd0d9ec7582f01cb2453f7c69aaa';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        armhf)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        ppc64el)          ESUM='8a1e67cdb014b924ddd4775cef3089b065aea2a73e9d540e938586319c73a4e1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Mon, 09 Nov 2026 23:16:26 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Mon, 09 Nov 2026 23:16:26 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 09 Nov 2026 23:16:26 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 09 Nov 2026 23:42:04 GMT
RUN apt-get update && apt-get install -y libc6-dev make --no-install-recommends && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 09 Nov 2026 23:42:05 GMT
ENV JRUBY_VERSION=9.4.15.0
# Mon, 09 Nov 2026 23:42:05 GMT
ENV JRUBY_SHA256=c8b8c5a7a1581fdba3ba73f7c375f793f6528117b444cc6baf6fb29bbcf9696d
# Mon, 09 Nov 2026 23:42:05 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1 # buildkit
# Mon, 09 Nov 2026 23:42:05 GMT
ENV PATH=/opt/jruby/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Nov 2026 23:42:05 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc # buildkit
# Mon, 09 Nov 2026 23:42:10 GMT
RUN gem install bundler rake net-telnet xmlrpc # buildkit
# Mon, 09 Nov 2026 23:42:10 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 09 Nov 2026 23:42:10 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 09 Nov 2026 23:42:10 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Nov 2026 23:42:10 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME" # buildkit
# Mon, 09 Nov 2026 23:42:10 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6392ddf91082c7385cd912ef363bdada4b2f5f4e9e5443e29698a04f4f54860`  
		Last Modified: Mon, 09 Nov 2026 23:16:39 GMT  
		Size: 16.1 MB (16115971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b1d47593129faaa332e54c209f0e5d04018e2e8b3a3e9e446a3f9d9db65cda4`  
		Last Modified: Mon, 09 Nov 2026 23:16:40 GMT  
		Size: 55.2 MB (55210324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:546b4bedcf26150a13f77466b8ac213dc96f6a08211075090c91608d7359e799`  
		Last Modified: Mon, 09 Nov 2026 23:16:38 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb1cd128f6bbd60e9ffbfcc2d03dc7a646a23e7ec7601d18a023f8e8b81d051b`  
		Last Modified: Mon, 09 Nov 2026 23:16:38 GMT  
		Size: 2.5 KB (2484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1196c5eeaaf5f4e03d58f8f08764c9e95889dc0f48345233d7e4e0e2a6fc365`  
		Last Modified: Mon, 09 Nov 2026 23:42:20 GMT  
		Size: 5.7 MB (5675426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4e51485cf963b8cc6af09c87b9166259709a3a1f1caccb1254a8b36335bc9d6`  
		Last Modified: Mon, 09 Nov 2026 23:42:21 GMT  
		Size: 32.8 MB (32793155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13c1edbdbad5149134388a56a7d6e0847c7e81e933ef789a17ec52832e610e94`  
		Last Modified: Mon, 09 Nov 2026 23:42:20 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fed2bcd1735bdc27cd1d5b4e6ef35ddc309285cab91caaea133a59ac5ba71edb`  
		Last Modified: Mon, 09 Nov 2026 23:42:20 GMT  
		Size: 1.3 MB (1296986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78105dc471b149546cbad0cebe0cbe5ed75f69ddc7bab710b2cef499e8ee08fd`  
		Last Modified: Mon, 09 Nov 2026 23:42:21 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jruby:9-jdk8` - unknown; unknown

```console
$ docker pull jruby@sha256:b3eee16bc65bb27c7def1c9f766ae919c5573068dc64462e69b06ff0a6b626a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5501352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bb60204f095fa4a88a272a8c8716fce2e3f477b84a2601a2d4d27532f998b40`

```dockerfile
```

-	Layers:
	-	`sha256:fa58062a172b34a00ab50585ed2e0b833396654da2efc61a46f7b4a1c37e932a`  
		Last Modified: Mon, 09 Nov 2026 23:42:20 GMT  
		Size: 5.5 MB (5481108 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bdc1d52cfaf7cfe81ca2da5105c196a4bc29cb9ad0c5305ff45c78733865739b`  
		Last Modified: Mon, 09 Nov 2026 23:42:20 GMT  
		Size: 20.2 KB (20244 bytes)  
		MIME: application/vnd.in-toto+json

### `jruby:9-jdk8` - linux; arm64 variant v8

```console
$ docker pull jruby@sha256:d89c03ea3dbb5360dee4a22158799ffe094f372ffa45d2e9de7f81b348dda13d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.7 MB (136652028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8a921518874be0ed258e6d722ca9cc5ee975849766dab2b3d036a012627dd92`
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
# Mon, 09 Nov 2026 23:16:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 09 Nov 2026 23:16:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Nov 2026 23:16:16 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 09 Nov 2026 23:16:16 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 09 Nov 2026 23:16:16 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Mon, 09 Nov 2026 23:16:20 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='fb3bfa869012419b562bb4235d0d83ec4f8c1dda62ae432ba20c6c3a7e43f7e4';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u512b09.tar.gz';          ;;        arm64)          ESUM='01263df22c4553f63146bbae807e70cd4628dd0d9ec7582f01cb2453f7c69aaa';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        armhf)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        ppc64el)          ESUM='8a1e67cdb014b924ddd4775cef3089b065aea2a73e9d540e938586319c73a4e1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Mon, 09 Nov 2026 23:16:20 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Mon, 09 Nov 2026 23:16:20 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 09 Nov 2026 23:16:20 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 09 Nov 2026 23:41:45 GMT
RUN apt-get update && apt-get install -y libc6-dev make --no-install-recommends && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 09 Nov 2026 23:41:46 GMT
ENV JRUBY_VERSION=9.4.15.0
# Mon, 09 Nov 2026 23:41:46 GMT
ENV JRUBY_SHA256=c8b8c5a7a1581fdba3ba73f7c375f793f6528117b444cc6baf6fb29bbcf9696d
# Mon, 09 Nov 2026 23:41:46 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1 # buildkit
# Mon, 09 Nov 2026 23:41:46 GMT
ENV PATH=/opt/jruby/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Nov 2026 23:41:46 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc # buildkit
# Mon, 09 Nov 2026 23:41:52 GMT
RUN gem install bundler rake net-telnet xmlrpc # buildkit
# Mon, 09 Nov 2026 23:41:52 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 09 Nov 2026 23:41:52 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 09 Nov 2026 23:41:52 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Nov 2026 23:41:53 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME" # buildkit
# Mon, 09 Nov 2026 23:41:53 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a082fc40fa02c6a363328e6658d0194e13f254eec0babe213e9973d013678f7a`  
		Last Modified: Mon, 09 Nov 2026 23:16:34 GMT  
		Size: 16.1 MB (16050553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaa7f861b80c2806646da7b9483632bec965e6515d539dd8de1dacb058eca4f2`  
		Last Modified: Mon, 09 Nov 2026 23:16:34 GMT  
		Size: 54.3 MB (54281472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d85ced69658afd8e2ea6f69cb5968dd4e9fbb7e387ceaa9a9e54f76671f53d22`  
		Last Modified: Mon, 09 Nov 2026 23:16:31 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04f5ae32a7837aef2714dcf2b57c6480b0bec351d2468bbdea02a08084107d7b`  
		Last Modified: Mon, 09 Nov 2026 23:16:32 GMT  
		Size: 2.5 KB (2484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b669f94cd0375fbe2e3d69cc96a25009f0dc2adec7d1d9e587e02ebbed4bdc15`  
		Last Modified: Mon, 09 Nov 2026 23:42:03 GMT  
		Size: 4.5 MB (4542253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:688d4c31d653fd15a7285fe08d37ce0a5f6a0b254a1deaefe43531f5664e7fe9`  
		Last Modified: Mon, 09 Nov 2026 23:42:04 GMT  
		Size: 32.8 MB (32793189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c73902a30c5357f53cbb42b38e1d8807db0e25385220f2a1e86da6d7e994ae9`  
		Last Modified: Mon, 09 Nov 2026 23:42:03 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:915cdda113176d89344e8e7ac244f984e84076df5c696fa1c832e57590f1048e`  
		Last Modified: Mon, 09 Nov 2026 23:42:03 GMT  
		Size: 1.3 MB (1297001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc3f2dd1b9e52426a44059d1746746fb7353b7ab0f16c737c616cf69520d1d4a`  
		Last Modified: Mon, 09 Nov 2026 23:42:04 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jruby:9-jdk8` - unknown; unknown

```console
$ docker pull jruby@sha256:e105d86c90c46b70581cb814f1904ef14bc297af1ee8f5126f05abf963fffd9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5473743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4df876cb95e11a30c8ce6c8f8f1971b8ecc49b7ea4999ed3363db0c3bc8102d7`

```dockerfile
```

-	Layers:
	-	`sha256:5d0d09f260130f5beec2f6758d809c1421b55eaa198bf5696f82968ffc8ce2b3`  
		Last Modified: Mon, 09 Nov 2026 23:42:03 GMT  
		Size: 5.5 MB (5453287 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1752f4aabf0038a2492e406e5651d05e07a60a48bc29b84e918c7a61a8faa963`  
		Last Modified: Mon, 09 Nov 2026 23:42:03 GMT  
		Size: 20.5 KB (20456 bytes)  
		MIME: application/vnd.in-toto+json
