## `eclipse-temurin:27-alpine`

```console
$ docker pull eclipse-temurin@sha256:8b32b7f44f8752d9aaa0a58d2fb8d679aa719083f8f0c2d9bd90eb35f2fc149d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `eclipse-temurin:27-alpine` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:cc2840965b9ef22222883546a5afc7f6cd78fc2a6d40c26710e85ed23985e9b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.1 MB (111136557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7ef5ed60a579f954c6c83efa306d3056c4fef35cd21d3fe6b6cfb78a685d8da`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:19:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 19:19:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:19:12 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 05 Nov 2026 19:19:12 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 05 Nov 2026 19:19:12 GMT
ENV JAVA_VERSION=jdk-27+35
# Thu, 05 Nov 2026 19:19:21 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='440353d641e7726396dff5d9a9d0d17c05a070dc25664c20f9d7efafc2f16cf7';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_aarch64_alpine-linux_hotspot_27_35.tar.gz';          ;;        x86_64)          ESUM='45aef7cd5ae667c6f5dd100c96a99e5a00e61c512664bb13326cf149b7d37e0f';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_x64_alpine-linux_hotspot_27_35.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Thu, 05 Nov 2026 19:19:23 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 05 Nov 2026 19:19:23 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:19:23 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 05 Nov 2026 19:19:23 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3082458f008ca28bd68707854b95556dbed015e482a78fa8ac778eebc06f341e`  
		Last Modified: Thu, 05 Nov 2026 19:19:38 GMT  
		Size: 14.4 MB (14374227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8943366f03fcc5d06d787e5f8aaa6a676c381bb5ca2732bc4ff1bffa5669cd0`  
		Last Modified: Thu, 05 Nov 2026 19:19:39 GMT  
		Size: 92.9 MB (92906066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfcefcdbcd2edef56703e2b712bef5d25cb42f9d4dc1fe60e17c1eb00501785b`  
		Last Modified: Thu, 05 Nov 2026 19:19:37 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7263295670e0bec5ec834b545dfe10a1bb361bcbdbd5325f4a2bb356f475c640`  
		Last Modified: Thu, 05 Nov 2026 19:19:29 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:27-alpine` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:306f7c88e4272ef0fd63fd2308ab114bd61d7efac952375b31493322a84d50ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **967.7 KB (967711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edac4df9af8829d60a896c2509b16342fe9994793bc1f428ae724124d3fc5308`

```dockerfile
```

-	Layers:
	-	`sha256:6a578cf9f77f308ecd78e061b32b6bbb919cdc6223f75c1cd3d9aa36498ea0ec`  
		Last Modified: Thu, 05 Nov 2026 19:19:37 GMT  
		Size: 946.2 KB (946248 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:80b5e0b6c8b01b6c0a740e29a6d1648b441bed355218888491d972a5dad024ab`  
		Last Modified: Thu, 05 Nov 2026 19:19:37 GMT  
		Size: 21.5 KB (21463 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:27-alpine` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:b2d3007f916999ebf534ec62fc91528c01de82db6fdb4bd755bcf42c5ca969ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.4 MB (110410998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1d2ce055356353931929b1b7c3f79c59d82574483f2238305dc96d8bb707e70`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:14:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 19:14:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:14:10 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 05 Nov 2026 19:14:10 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 05 Nov 2026 19:14:10 GMT
ENV JAVA_VERSION=jdk-27+35
# Thu, 05 Nov 2026 19:14:19 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='440353d641e7726396dff5d9a9d0d17c05a070dc25664c20f9d7efafc2f16cf7';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_aarch64_alpine-linux_hotspot_27_35.tar.gz';          ;;        x86_64)          ESUM='45aef7cd5ae667c6f5dd100c96a99e5a00e61c512664bb13326cf149b7d37e0f';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_x64_alpine-linux_hotspot_27_35.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Thu, 05 Nov 2026 19:14:21 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 05 Nov 2026 19:14:21 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:14:21 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 05 Nov 2026 19:14:21 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2236bf9be55a388dff4aedff14163d594d765ba5b8caabfe85701c55ea5afccd`  
		Last Modified: Thu, 05 Nov 2026 19:14:36 GMT  
		Size: 14.4 MB (14426912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:153b5e43a6d1967ccc3b86df66761fd02b61bbbc6e3e6cdbbff1f06554cb2a24`  
		Last Modified: Thu, 05 Nov 2026 19:14:37 GMT  
		Size: 91.8 MB (91790900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0320b64047158996296aaf5e8a422b50feef43ebc4a5d13acd93adf613c32d85`  
		Last Modified: Thu, 05 Nov 2026 19:14:35 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d0d5d3524956ba0f974e8dce4e8a7344dc822d1d66acb7449cff123ca8dbcb1`  
		Last Modified: Thu, 05 Nov 2026 19:14:35 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:27-alpine` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:0b65a77cb13b9ac0abeeb7a12d00b80500e2080d85e056b967da9b702057214b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1117254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecc629316e4286db551d2da0210e8309b5287cc4a00569a580bfde6278d5a8f3`

```dockerfile
```

-	Layers:
	-	`sha256:f9dd255ebbc4946e24a351fc4c413875000bde8e47915691029e7828024a9492`  
		Last Modified: Thu, 05 Nov 2026 19:14:35 GMT  
		Size: 1.1 MB (1095633 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:262ee5ad6090a3358b2a2317236c1e86a5f166f4ae1af8d521398aaabf94e115`  
		Last Modified: Thu, 05 Nov 2026 19:14:35 GMT  
		Size: 21.6 KB (21621 bytes)  
		MIME: application/vnd.in-toto+json
