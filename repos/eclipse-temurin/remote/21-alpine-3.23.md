## `eclipse-temurin:21-alpine-3.23`

```console
$ docker pull eclipse-temurin@sha256:452f7b14d7c9d588e9556e2281a2b64aa1370b12468c02e491b498dbb41a8811
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `eclipse-temurin:21-alpine-3.23` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:737fd40c02513f02a3b3dcc19eb287608c923b1026d5d5bc3e7cab9c12f3aa6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.5 MB (183547690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f9fe1da5d5a3d51738dff404b6c0f272ddabe2a4aeba95e9c90799249b8eae0`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Fri, 21 Aug 2026 18:24:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:24:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:24:35 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:24:35 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 18:24:35 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Fri, 21 Aug 2026 18:24:41 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='a32f7655011640ed8fb4347fffa2588cb7538de2f2e82027845816740560e2b1';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_aarch64_alpine-linux_hotspot_21.0.12_8.tar.gz';          ;;        x86_64)          ESUM='073a48cb87f788a0cb283d81cc6d96cbc9d671d6a60a3ba6de62e66f0ea9dd47';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_x64_alpine-linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 21 Aug 2026 18:24:42 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:24:42 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:24:42 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:24:42 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cb68adbf2a12e8443c67f3fcf190329505534aa8c60db9c02d72910a807241d`  
		Last Modified: Fri, 21 Aug 2026 18:24:59 GMT  
		Size: 21.4 MB (21367980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dcf1f5eca60c3a20398445d682d111c67441c56056e59a0a3a16183f9da46f6`  
		Last Modified: Fri, 21 Aug 2026 18:25:00 GMT  
		Size: 158.3 MB (158332700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:468f759b9b472be8f668bde89f32eb2ccc720f8d45897e66e52726e4ec05534f`  
		Last Modified: Fri, 21 Aug 2026 18:24:58 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:609198b972726300d385a1936d52661ca89acc37fad7bc14c05317c033d487fa`  
		Last Modified: Fri, 21 Aug 2026 18:24:58 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-alpine-3.23` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:52c4fe198e2a4d51dbc4fab1ad754387c2d744c6e1f6a591c7473b456331d105
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1110644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf628c7dc26380c238571a196e484ff7396b7b03ff5993c32c7c74423258f165`

```dockerfile
```

-	Layers:
	-	`sha256:871a60981f4af61a01a09075ef5f596835280a593176feda674135ea81e92b39`  
		Last Modified: Fri, 21 Aug 2026 18:24:58 GMT  
		Size: 1.1 MB (1090223 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:407a433f29f540f3ea2e6f24301e8f692539f2a795d375a1c4077e0f53a0223e`  
		Last Modified: Fri, 21 Aug 2026 18:24:58 GMT  
		Size: 20.4 KB (20421 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-alpine-3.23` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:2950227477f99d6504f8900c443896eacb351bfd537b333500e62b551f2314a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.9 MB (181885004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c8e4b89681513abdda2d59c0254bd381d490ee28b85c04aca528e84332cf571`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:41:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 17 Sep 2026 21:41:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:41:00 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 17 Sep 2026 21:41:00 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 17 Sep 2026 21:41:00 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Thu, 17 Sep 2026 21:41:07 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='a32f7655011640ed8fb4347fffa2588cb7538de2f2e82027845816740560e2b1';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_aarch64_alpine-linux_hotspot_21.0.12_8.tar.gz';          ;;        x86_64)          ESUM='073a48cb87f788a0cb283d81cc6d96cbc9d671d6a60a3ba6de62e66f0ea9dd47';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_x64_alpine-linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 17 Sep 2026 21:41:09 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 17 Sep 2026 21:41:09 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:41:09 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 17 Sep 2026 21:41:09 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b350cf67db845c9be2871a91003b4e765b2cb38d91dbcdf3cf40c0036556475`  
		Last Modified: Thu, 17 Sep 2026 21:41:25 GMT  
		Size: 21.4 MB (21361817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1596cc18859c6987be52caf74722fd75bcdba854e7be47c1681464d9ddeac47`  
		Last Modified: Thu, 17 Sep 2026 21:41:28 GMT  
		Size: 156.3 MB (156334539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b357b06df5973911a133dbbafafcb63aa803b169023ebfb84690dd6ca571dc06`  
		Last Modified: Thu, 17 Sep 2026 21:41:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:507437bbb4dd20a82e83da4a9b4f498fc1cc85d9000fdba53d8b6651158e7cb7`  
		Last Modified: Thu, 17 Sep 2026 21:41:24 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-alpine-3.23` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:788e4d0054a016175cf7681c0ced34cfc2fa02a1f52797e5c116afced746f6e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1261411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdaa37f49db7adc7ac0182601f2b18aff6639ff2a87962e650d4ef26b7263409`

```dockerfile
```

-	Layers:
	-	`sha256:a71f3f47c16018ca309f0e9f07969ddbfd4a6086b912a2bdff44d823a830dd65`  
		Last Modified: Thu, 17 Sep 2026 21:41:24 GMT  
		Size: 1.2 MB (1240868 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:57f550cb8dc0f4d881e63d56eae9dfb63b84e82b692f80ec49a09a88d550fd54`  
		Last Modified: Thu, 17 Sep 2026 21:41:24 GMT  
		Size: 20.5 KB (20543 bytes)  
		MIME: application/vnd.in-toto+json
