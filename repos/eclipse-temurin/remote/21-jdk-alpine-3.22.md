## `eclipse-temurin:21-jdk-alpine-3.22`

```console
$ docker pull eclipse-temurin@sha256:6c9261b1dfcbb2073c178b766ce6d9d1dc9c54e045a78814cead41877dd360d3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `eclipse-temurin:21-jdk-alpine-3.22` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:dc508b7463457165e400508a881f9087c1298a69043f9d2351d450ec1d11bebd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.3 MB (183295217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf37e9ef4cf67e50dc05228d61246ce7ddffcf9fd9a0961d24058fdc3dd9861e`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Fri, 21 Aug 2026 18:23:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:23:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:23:39 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:23:39 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 18:23:39 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Fri, 21 Aug 2026 18:24:41 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='a32f7655011640ed8fb4347fffa2588cb7538de2f2e82027845816740560e2b1';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_aarch64_alpine-linux_hotspot_21.0.12_8.tar.gz';          ;;        x86_64)          ESUM='073a48cb87f788a0cb283d81cc6d96cbc9d671d6a60a3ba6de62e66f0ea9dd47';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_x64_alpine-linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 21 Aug 2026 18:24:43 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:24:43 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:24:43 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:24:43 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b45e4243720b55023f97dd1fcadc095c865d70a376db078afb80f3f2c96d8866`  
		Last Modified: Fri, 21 Aug 2026 18:24:02 GMT  
		Size: 21.2 MB (21172331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b504d2dc54227f2756ee3152dc36578d30224d84589069506bedc6d261772fc8`  
		Last Modified: Fri, 21 Aug 2026 18:25:02 GMT  
		Size: 158.3 MB (158332700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13a58c17061c0ab7118f680d4ee52970441a069fc57ac810dca836b8561a1e43`  
		Last Modified: Fri, 21 Aug 2026 18:24:58 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5103544f9dcbeec7c68b70b9fb9c56289e58358b94f554b04a038b1331c0f2a`  
		Last Modified: Fri, 21 Aug 2026 18:24:58 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jdk-alpine-3.22` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:2b3d3686ac6dad5069898dcdf3a4d8966fa7ce672dddfa97bda164eda65fb25b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1109352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b901e27d8941643fda43497c2ff8d40cb470d119612fd1929550738cd294dd5`

```dockerfile
```

-	Layers:
	-	`sha256:2af2a7e39cdc89054f436c247997f807c5566b83db980a154d7a4ed23bbfd519`  
		Last Modified: Fri, 21 Aug 2026 18:24:58 GMT  
		Size: 1.1 MB (1088930 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b73c7a763345605878587590a07e5ec236f31457759984ed65693241a6c5832`  
		Last Modified: Fri, 21 Aug 2026 18:24:58 GMT  
		Size: 20.4 KB (20422 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jdk-alpine-3.22` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:93946983d38a8385d95c62db18653038155d5975573f8a85fbfee40d0a7f3d0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.7 MB (181688965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:203aca5309c6163f9f02da4d8a2aef6d319cb19a912df0e8df739d48248ecaa1`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:30 GMT
ADD alpine-minirootfs-3.22.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:30 GMT
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
	-	`sha256:16fc4f52163f03cd2189c3d6a4b3f28a605cfb7919af64b3da4562cca69d2306`  
		Last Modified: Thu, 17 Sep 2026 20:37:36 GMT  
		Size: 4.1 MB (4123084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d33f0ccc97ca02622fa30b0f5b828d2fe24d98e7975b3b9c54f6312cd474c6c7`  
		Last Modified: Thu, 17 Sep 2026 21:41:25 GMT  
		Size: 21.2 MB (21228750 bytes)  
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

### `eclipse-temurin:21-jdk-alpine-3.22` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:c44b815b60874abdcbadb61c4647613cd98a100563dc87d2ec03496a15c0034a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1260769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85e2e6af6fbc7900eef2f6be69dd5ac8f4c8e171a84c2a4a3d2cf1ab446bf3b6`

```dockerfile
```

-	Layers:
	-	`sha256:71b06855cde0225a4a7eb1f6c96c6d4c71cfeb913bc302cbcc06333180661640`  
		Last Modified: Thu, 17 Sep 2026 21:41:24 GMT  
		Size: 1.2 MB (1240225 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5921333276ed7e6c9cd592c76bf17098617c05aee0666790cf2b8cfb7e7b7ce5`  
		Last Modified: Thu, 17 Sep 2026 21:41:24 GMT  
		Size: 20.5 KB (20544 bytes)  
		MIME: application/vnd.in-toto+json
