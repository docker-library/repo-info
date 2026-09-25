## `eclipse-temurin:11-alpine-3.21`

```console
$ docker pull eclipse-temurin@sha256:5ffa5e19a960027f4cb3cfc5b6a3adcd8b474e36b647290ff759c0fdd8537d46
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:11-alpine-3.21` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:48601242de9d3316516d2216a61af326cb9226f328f5a4c4f2e1fa8cb162dce4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.9 MB (160902018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9f0dfc810053e85f33631f2f072179951edee7c1b533ee22a1226aac9666099`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 17 Sep 2026 20:38:22 GMT
ADD alpine-minirootfs-3.21.8-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:38:22 GMT
CMD ["/bin/sh"]
# Fri, 25 Sep 2026 22:35:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:35:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:35:30 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:35:30 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 25 Sep 2026 22:35:30 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Fri, 25 Sep 2026 22:35:38 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='1dc1d3259fa4ca7a2db43c539a60bfa7fc0ea595f445a71ef36d28120f3094aa';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_x64_alpine-linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 25 Sep 2026 22:35:39 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:35:39 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:35:39 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 22:35:39 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:16333ee0c00fc65e025a2a4f839703ad37a74728832977fbdf080984de1b8e5a`  
		Last Modified: Thu, 17 Sep 2026 20:38:28 GMT  
		Size: 3.6 MB (3626020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a6e78f2fc01e7cb62b2dd3345586e5c04baa41a5d50f11e119a6ac754d76b86`  
		Last Modified: Fri, 25 Sep 2026 22:35:52 GMT  
		Size: 16.2 MB (16240609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a643519b5f6673c07720a5e01b34e3f78c5fc4183d51e4978dc34955cb398f9d`  
		Last Modified: Fri, 25 Sep 2026 22:35:55 GMT  
		Size: 141.0 MB (141032797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:183774ffbea7e38dbaf3cae8a501e05ac65f243976bf2d6a3ec2b8487d7e55af`  
		Last Modified: Fri, 25 Sep 2026 22:35:52 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ced67572f669d0661533bc3e2e0f61b3b771d3c29f6ad6bfa2dac60b48e2ef3`  
		Last Modified: Fri, 25 Sep 2026 22:35:52 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-alpine-3.21` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:726c890ca1f3d892dd0384cc473394f7493c46575c5ce52b65995094af5c8f16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1003666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f397d2957a6033c04a7403d2a9aafab01a34ece3966401cb6e21a42625a8b90`

```dockerfile
```

-	Layers:
	-	`sha256:684033ee4ca83b03281d4ce6b0bfb699ad45049350c70f2aed353379856d6ef6`  
		Last Modified: Fri, 25 Sep 2026 22:35:52 GMT  
		Size: 984.5 KB (984477 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b2fd5b9068444c03ce44cc1842ab57df0c73840ff3df0eaad6e449a10615e44`  
		Last Modified: Fri, 25 Sep 2026 22:35:51 GMT  
		Size: 19.2 KB (19189 bytes)  
		MIME: application/vnd.in-toto+json
