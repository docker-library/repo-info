## `clojure:temurin-21-tools-deps-1.12.6.1673-alpine`

```console
$ docker pull clojure@sha256:fe76e91748c6092df2f4c3fcb712525b992ec83bfa81d2569ac509a59a9499da
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-1.12.6.1673-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:1e2eefaae97943b428e25994b3330239f2d93cd31530c0942afd018dc60ab37f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.0 MB (209031357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72746fd316630985d0320ec30dac1b7a11698f030d43fb38b99300b8ba19c903`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Fri, 25 Sep 2026 22:37:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:37:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:37:18 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:37:18 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 25 Sep 2026 22:37:18 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Fri, 25 Sep 2026 22:37:26 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='8242627927adc90ac2561d0812dd39890ebc21ef09b550bc2e8b93640b8af4f8';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_aarch64_alpine-linux_hotspot_21.0.12.1_1.tar.gz';          ;;        x86_64)          ESUM='bd8824214e42b33333c7f55a039ea078ad6ea6be20d7c5b011c801fb2bdb44f0';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_x64_alpine-linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 25 Sep 2026 22:37:27 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:37:27 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:37:27 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 22:37:27 GMT
CMD ["jshell"]
# Fri, 25 Sep 2026 23:23:02 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 25 Sep 2026 23:23:02 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:23:06 GMT
RUN apk add --no-cache curl bash make git rlwrap && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apk del curl # buildkit
# Fri, 25 Sep 2026 23:23:06 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 25 Sep 2026 23:23:06 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:23:06 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:23:06 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e0e05dd51e5ffe47d317144d69de9a3946dc8d83750c639d76c40e723b3b608`  
		Last Modified: Fri, 25 Sep 2026 22:37:42 GMT  
		Size: 21.4 MB (21442562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:802e35573aa7ee42b46fd9714582af48caf0f6aebbf2992311da030c8ff5a423`  
		Last Modified: Fri, 25 Sep 2026 22:37:45 GMT  
		Size: 158.3 MB (158329466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0aeafda7b1fad5c53a3b22b763dd94158c78503c46b440abd39af469e9184f21`  
		Last Modified: Fri, 25 Sep 2026 22:37:41 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f75bb0de4136d37b665782e892fb7132a0c4d32a3d4bf6989609487696b5e32f`  
		Last Modified: Fri, 25 Sep 2026 22:37:41 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c390afd8b8516a9fe32f560a1eda782c2a263e7e680a660d5d99e76052978093`  
		Last Modified: Fri, 25 Sep 2026 23:23:14 GMT  
		Size: 25.4 MB (25405949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37a2a5b3537945fa08e717d800ca5276cb17488e339bf5cf6e8724f0027cd54b`  
		Last Modified: Fri, 25 Sep 2026 23:23:14 GMT  
		Size: 618.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40edeb32bc8db16746170b1e6233aedd776f357984445b34d56a3fba08c35062`  
		Last Modified: Fri, 25 Sep 2026 23:23:14 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.6.1673-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:0539fee20b2db59c7f40bd16e4e8f7d74c7adccbeaa5cbf00a53c200df1cb845
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1305916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c12290ff624bcbf5541805081b7d715b665f841e09188563414629708885f74`

```dockerfile
```

-	Layers:
	-	`sha256:b456bbf5e973dcf524d4f42856d53807278d9a713d2a495a4e3e96ec8eca7e51`  
		Last Modified: Fri, 25 Sep 2026 23:23:14 GMT  
		Size: 1.3 MB (1290483 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c7586112f7327689098cca9311ff926c7c6c2d4e13dbefd1c3d281efc1384128`  
		Last Modified: Fri, 25 Sep 2026 23:23:13 GMT  
		Size: 15.4 KB (15433 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.6.1673-alpine` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:e9ce6dc60e5a44455dd0ef9c83255f7ec07f28834190bd2fad0c91aa988d679c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.5 MB (207496833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:105fab1cce0d3ada737ed1b7b6132d96e5c89ab3d73c2728d1510db97171169b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Fri, 25 Sep 2026 22:36:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:36:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:36:29 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:36:29 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 25 Sep 2026 22:36:29 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Fri, 25 Sep 2026 22:36:37 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='8242627927adc90ac2561d0812dd39890ebc21ef09b550bc2e8b93640b8af4f8';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_aarch64_alpine-linux_hotspot_21.0.12.1_1.tar.gz';          ;;        x86_64)          ESUM='bd8824214e42b33333c7f55a039ea078ad6ea6be20d7c5b011c801fb2bdb44f0';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_x64_alpine-linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 25 Sep 2026 22:36:38 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:36:38 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:36:38 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 22:36:38 GMT
CMD ["jshell"]
# Fri, 25 Sep 2026 23:20:41 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 25 Sep 2026 23:20:41 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:20:45 GMT
RUN apk add --no-cache curl bash make git rlwrap && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apk del curl # buildkit
# Fri, 25 Sep 2026 23:20:45 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 25 Sep 2026 23:20:46 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:20:46 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:20:46 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c807d060ae33e5d5997c7313f9cfce87a3f219dcf1e33b59a3bced411008d43e`  
		Last Modified: Fri, 25 Sep 2026 22:36:55 GMT  
		Size: 21.4 MB (21419753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8438b55bfa39bf94c0be01accbc3ffad4dc8d2d7ad997a468531d1f6acd5c68c`  
		Last Modified: Fri, 25 Sep 2026 22:36:57 GMT  
		Size: 156.3 MB (156335210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:166f645a3063ab63a42a670309a370a7fb7933e3a9d7b68cf3f3ea3becdcdb56`  
		Last Modified: Fri, 25 Sep 2026 22:36:54 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:794d8b8fb47ba05f395f78c45b91f2e8ead46216c584a8dfcdb22f4f7b2c2558`  
		Last Modified: Fri, 25 Sep 2026 22:36:54 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:125f67cbf745a439d45f9a17076c32e461265cb833a01017e7466981270e155d`  
		Last Modified: Fri, 25 Sep 2026 23:20:56 GMT  
		Size: 25.6 MB (25550570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e51673f28b54b83b3cb3b8da4ad63a250f6963fe0c586e91f394677afd08898`  
		Last Modified: Fri, 25 Sep 2026 23:20:55 GMT  
		Size: 618.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23400fe96c57ba749c5902cdf366305f817ae57ff87791b2441554f06d517b42`  
		Last Modified: Fri, 25 Sep 2026 23:20:55 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.6.1673-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:9e3c6066e2e13e231c9db1057226b1551e2916f62fcd5d3e90640082e6b5cf3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 MB (1455360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:890c051206178b6ba101deb291bc8160eea1f28bd2a5d6e6ed68b58bfed2e8bf`

```dockerfile
```

-	Layers:
	-	`sha256:358d0d75abbaae7348025ed1ad0d847aac5e8defe83cb5d20bdd364dde869f23`  
		Last Modified: Fri, 25 Sep 2026 23:20:55 GMT  
		Size: 1.4 MB (1439835 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cbdf0ed44b82f94aab1fe36dff0d6c6ab8ac1a59f4917151d57c113560857a0d`  
		Last Modified: Fri, 25 Sep 2026 23:20:55 GMT  
		Size: 15.5 KB (15525 bytes)  
		MIME: application/vnd.in-toto+json
