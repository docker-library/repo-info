## `jruby:9-jdk`

```console
$ docker pull jruby@sha256:1cfb083143703d142782d6a830a5675f8c8fb42f2dd07e4fbae4d757cf88f0e7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `jruby:9-jdk` - linux; amd64

```console
$ docker pull jruby@sha256:c7f51228d74e4545f13bab584fafd1622d86578b44ce2ed6432f2442ae3d563f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.8 MB (140810915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8829c2a4700c1eea893099db3e76a9bce03ca504fa8a62fdb0c65bcb65427370`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:17:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 01:17:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:17:23 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:17:23 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:17:23 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Fri, 02 Oct 2026 01:17:26 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='9c70e102f527ac674ac2fe9c7d47b9a04e2d19842ba5ab8e9b33f368bbadfaea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_linux_hotspot_8u504b01.tar.gz';          ;;        arm64)          ESUM='57b7ed8af9d48542bb49ff7894448040b17bea0a48b41677d11ecaec6129768d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        armhf)          ESUM='b3e720d6515ec36b7de8a885e7e59a9b41968038644167aaff9c88d98b5e2aa7';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_arm_linux_hotspot_8u504b01.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='9ab4f48f91c5e140c732cef76a332989aeef9df7a19b2436de7833ef9d7d8960';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Fri, 02 Oct 2026 01:17:27 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 01:17:27 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:17:27 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 02:22:22 GMT
RUN apt-get update && apt-get install -y libc6-dev make --no-install-recommends && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:22:23 GMT
ENV JRUBY_VERSION=9.4.15.0
# Fri, 02 Oct 2026 02:22:23 GMT
ENV JRUBY_SHA256=c8b8c5a7a1581fdba3ba73f7c375f793f6528117b444cc6baf6fb29bbcf9696d
# Fri, 02 Oct 2026 02:22:23 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1 # buildkit
# Fri, 02 Oct 2026 02:22:23 GMT
ENV PATH=/opt/jruby/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:22:23 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc # buildkit
# Fri, 02 Oct 2026 02:22:28 GMT
RUN gem install bundler rake net-telnet xmlrpc # buildkit
# Fri, 02 Oct 2026 02:22:28 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 02 Oct 2026 02:22:28 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 02 Oct 2026 02:22:28 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:22:28 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME" # buildkit
# Fri, 02 Oct 2026 02:22:28 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04554394ac477b50174eaac591344e0ebed72cda3dee2a3754179f5386f434a9`  
		Last Modified: Fri, 02 Oct 2026 01:17:40 GMT  
		Size: 16.1 MB (16114143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a8d4566a561e064f277e727ed5e69c2a651bbf578c8c242691198aff5fb1b66`  
		Last Modified: Fri, 02 Oct 2026 01:17:41 GMT  
		Size: 55.2 MB (55193990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09014cf089e2d55c338edec2e2fd2d7a02a5b41b034292cd446dacddfa0534fc`  
		Last Modified: Fri, 02 Oct 2026 01:17:39 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:782835a1524cbdcfd9f25fdacec224c357ec3b028e5e4890a74099b09325765c`  
		Last Modified: Fri, 02 Oct 2026 01:17:39 GMT  
		Size: 2.5 KB (2485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5804217fb3549d3b8873cc66ab0cb822432ff013c8ed127144205db37afa2820`  
		Last Modified: Fri, 02 Oct 2026 02:22:38 GMT  
		Size: 5.7 MB (5658052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:433604cb047cc9a152977eb8742b92c73d6a27505f27a4659127de20b82e003c`  
		Last Modified: Fri, 02 Oct 2026 02:22:39 GMT  
		Size: 32.8 MB (32793168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:554181e4575f3c983be00c3588decde4599dfc99ef5e05c97fcdc75dfb320f30`  
		Last Modified: Fri, 02 Oct 2026 02:22:37 GMT  
		Size: 200.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24900c4f2f74921de45399109d2ef03a11bf63eddb423901b4d4f256fdc03e81`  
		Last Modified: Fri, 02 Oct 2026 02:22:38 GMT  
		Size: 1.3 MB (1296980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03fc6a741ebda1d939e5992ac7369f018c0a2ea9811c272e9940c644915f0cc2`  
		Last Modified: Fri, 02 Oct 2026 02:22:39 GMT  
		Size: 142.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jruby:9-jdk` - unknown; unknown

```console
$ docker pull jruby@sha256:116c15885371b21b58d05ae2e088d80be8b30f2f41deef974361455c50efabcf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5503886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c43eb892463ec3f7d347d455c05138bb3d7e0e2ac3e082cbecaefef8c30b082d`

```dockerfile
```

-	Layers:
	-	`sha256:124d29acfc8f8827dacbad54a5fe1ddb82e5dff809a6c704a7da206262d09925`  
		Last Modified: Fri, 02 Oct 2026 02:22:38 GMT  
		Size: 5.5 MB (5483643 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5bffa316c4cbfc7d76123e1c39990bdcac2abc9014eb5e54c561d75487d3e03e`  
		Last Modified: Fri, 02 Oct 2026 02:22:37 GMT  
		Size: 20.2 KB (20243 bytes)  
		MIME: application/vnd.in-toto+json

### `jruby:9-jdk` - linux; arm64 variant v8

```console
$ docker pull jruby@sha256:37f20a4d7d3935a0100d984e353f58c62b0ac3e88ab48dfd9a188d5bed319f12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.6 MB (136617610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:144aec3897fd95b6fb19b29ccd60a1a10c44bff29b069ec0e48626273911344c`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 02 Oct 2026 10:22:44 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:22:44 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:22:44 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:22:46 GMT
ADD file:1e8b3941ec802b3e9a687b06bf141aa99b460bda277875ad29712897c6622f25 in / 
# Fri, 02 Oct 2026 10:22:46 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:17:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 00:17:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 00:17:29 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 00:17:29 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:17:29 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Sat, 17 Oct 2026 00:17:33 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='9c70e102f527ac674ac2fe9c7d47b9a04e2d19842ba5ab8e9b33f368bbadfaea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_linux_hotspot_8u504b01.tar.gz';          ;;        arm64)          ESUM='57b7ed8af9d48542bb49ff7894448040b17bea0a48b41677d11ecaec6129768d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        armhf)          ESUM='b3e720d6515ec36b7de8a885e7e59a9b41968038644167aaff9c88d98b5e2aa7';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_arm_linux_hotspot_8u504b01.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='9ab4f48f91c5e140c732cef76a332989aeef9df7a19b2436de7833ef9d7d8960';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Sat, 17 Oct 2026 00:17:34 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Sat, 17 Oct 2026 00:17:34 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:17:34 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Sat, 17 Oct 2026 01:24:30 GMT
RUN apt-get update && apt-get install -y libc6-dev make --no-install-recommends && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:24:31 GMT
ENV JRUBY_VERSION=9.4.15.0
# Sat, 17 Oct 2026 01:24:31 GMT
ENV JRUBY_SHA256=c8b8c5a7a1581fdba3ba73f7c375f793f6528117b444cc6baf6fb29bbcf9696d
# Sat, 17 Oct 2026 01:24:31 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1 # buildkit
# Sat, 17 Oct 2026 01:24:31 GMT
ENV PATH=/opt/jruby/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:24:31 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc # buildkit
# Sat, 17 Oct 2026 01:24:38 GMT
RUN gem install bundler rake net-telnet xmlrpc # buildkit
# Sat, 17 Oct 2026 01:24:38 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 17 Oct 2026 01:24:38 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 17 Oct 2026 01:24:38 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:24:38 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME" # buildkit
# Sat, 17 Oct 2026 01:24:38 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:807776a0e8f9ef6eb150a24deab6c1fe84ffa73c7030269c50769055b61c8894`  
		Last Modified: Sat, 17 Oct 2026 00:17:46 GMT  
		Size: 16.1 MB (16054933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63cafcf31d6d2bcd1a447e7cfd208f3495ce1c780eb72c033eba51f6b7eeb005`  
		Last Modified: Sat, 17 Oct 2026 00:17:47 GMT  
		Size: 54.3 MB (54259512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7a40d36813aae88bb915ec95812eee4f9372f7a857b577021e301d70a4b62ff`  
		Last Modified: Sat, 17 Oct 2026 00:17:45 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fe03f9ce67893813b00c74795c2139bffd4a26e2ec2e592ac7758f513e1afb6`  
		Last Modified: Sat, 17 Oct 2026 00:17:45 GMT  
		Size: 2.5 KB (2484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e00807e9eeb62700c83ed1a618b4c74ad0e9f76fd89d18e4078ba10914c7224b`  
		Last Modified: Sat, 17 Oct 2026 01:24:49 GMT  
		Size: 4.5 MB (4525240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75a2228eadadff564a8c55f296b6f8a31aaf48d61bb668dee8cbfb9adc9e5ffb`  
		Last Modified: Sat, 17 Oct 2026 01:24:49 GMT  
		Size: 32.8 MB (32793213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c75d3b786ad4cd22b6c56ffcef46b3db4d4d7dbd6b9c8a0fcf73ee98e959501`  
		Last Modified: Sat, 17 Oct 2026 01:24:48 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8825c1235936af453046c4550127dab38a952f57fbacb4137c82189a5b3aa4b2`  
		Last Modified: Sat, 17 Oct 2026 01:24:48 GMT  
		Size: 1.3 MB (1297036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0001a8fa8c38bf25b3ea89d78270904ed7d2efc0a892d32c4640277b0bc57e57`  
		Last Modified: Sat, 17 Oct 2026 01:24:50 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jruby:9-jdk` - unknown; unknown

```console
$ docker pull jruby@sha256:33948973c41ef800a9059be540757d7a32ba1e418061f6d82a48d68a338453d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5474374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dd4429a59b1d42d4050196c1482248c63a0034cb4f18cacb78cc60d53ab6865`

```dockerfile
```

-	Layers:
	-	`sha256:65589a8ebcd115cf3713a5915c194722e5c6fad51d5e444cb803acd1d8c3c5a5`  
		Last Modified: Sat, 17 Oct 2026 01:24:48 GMT  
		Size: 5.5 MB (5453919 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b40029a603d1ae9623ac4ecaaa759b691fd01464652672aae647cc33260ca144`  
		Last Modified: Sat, 17 Oct 2026 01:24:48 GMT  
		Size: 20.5 KB (20455 bytes)  
		MIME: application/vnd.in-toto+json
