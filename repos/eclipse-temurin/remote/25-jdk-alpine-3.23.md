## `eclipse-temurin:25-jdk-alpine-3.23`

```console
$ docker pull eclipse-temurin@sha256:6170e653e8d7077550dbbd75efa3a45c4828272474665bd1580f6300e5a0430f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `eclipse-temurin:25-jdk-alpine-3.23` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:2e0acfb25b3acff545a4f1d684cbc29922f8a02f14e83e97b5d886e2adcae590
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.9 MB (109864477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc01db7629b92cd7f9c406c3246881d6fedea2c094ff0ea5a5ca4830c18e2492`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Fri, 20 Nov 2026 17:39:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:39:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:39:50 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 17:39:50 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 20 Nov 2026 17:39:50 GMT
ENV JAVA_VERSION=jdk-25.0.5.1+2
# Fri, 20 Nov 2026 17:39:57 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='0501ef55ea9ec19b14987def7a73e044cd1748f7f3b97237b49007d387a84a1a';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jdk_aarch64_alpine-linux_hotspot_25.0.5.1_2.tar.gz';          ;;        x86_64)          ESUM='dbd75c6332ad995d20b6e25624b84652ef332d6babee4e9ddac3f36ee38d57be';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jdk_x64_alpine-linux_hotspot_25.0.5.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Fri, 20 Nov 2026 17:39:58 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:39:58 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:39:58 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 17:39:58 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:deafc7c936ea290c97f88e0ee08a2958497ed756de55d4bc7afe26e8fb7c004b`  
		Last Modified: Fri, 20 Nov 2026 17:40:14 GMT  
		Size: 14.3 MB (14328212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9d35a3e4e5fc29a0e7f324b4d03f6eeae2498990b704170e72f065dab9e8abc`  
		Last Modified: Fri, 20 Nov 2026 17:40:16 GMT  
		Size: 91.7 MB (91681086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da0f159e807feda6a1cb2f786cf7351ae3af937583de646bcfad34efcd0cd28b`  
		Last Modified: Fri, 20 Nov 2026 17:40:13 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a598f5468b644eeb8b00634f371edf7e189e656e2fbd3ed7c0d0089e0d0f063a`  
		Last Modified: Fri, 20 Nov 2026 17:40:13 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jdk-alpine-3.23` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:a5bab81189b026bb79d0348b9448e1e17cf77190149bd367bba1544b92f32e85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **969.0 KB (968998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:903938b116e390604f02f1f7ba238457d1bd1353c33564609b4e6d03eacea3cf`

```dockerfile
```

-	Layers:
	-	`sha256:d1757726c6b99d6d172f9a2ac90cc4f260355954eeebec4e62346eab9ec09170`  
		Last Modified: Fri, 20 Nov 2026 17:40:13 GMT  
		Size: 948.5 KB (948451 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f735eea91f3bb3cdb76ad0dfd06a7bfce98fdf88cb06cdc22b645fb7070e96f0`  
		Last Modified: Fri, 20 Nov 2026 17:40:13 GMT  
		Size: 20.5 KB (20547 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-jdk-alpine-3.23` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:5ecac70155630297e56f2136d828506e50e15608f1936f62655e129f0d492852
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.2 MB (109152298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c07ebcba2f6483b4e5ce17646ed1546b81368ec020906494499cb47e65bcaf2c`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Fri, 20 Nov 2026 17:39:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:39:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:39:53 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 17:39:53 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 20 Nov 2026 17:39:53 GMT
ENV JAVA_VERSION=jdk-25.0.5.1+2
# Fri, 20 Nov 2026 17:40:03 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='0501ef55ea9ec19b14987def7a73e044cd1748f7f3b97237b49007d387a84a1a';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jdk_aarch64_alpine-linux_hotspot_25.0.5.1_2.tar.gz';          ;;        x86_64)          ESUM='dbd75c6332ad995d20b6e25624b84652ef332d6babee4e9ddac3f36ee38d57be';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jdk_x64_alpine-linux_hotspot_25.0.5.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Fri, 20 Nov 2026 17:40:04 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:40:04 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:40:04 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 17:40:04 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b812f350e4dfbea3ddf928139889b8a09e8acd0876e06f5e6a559aebe22c5c10`  
		Last Modified: Fri, 20 Nov 2026 17:40:19 GMT  
		Size: 14.4 MB (14386055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07a1e4bdb34234ed99accfc2897c3e4ea550df7919392a77b81d7f84e9648b13`  
		Last Modified: Fri, 20 Nov 2026 17:40:21 GMT  
		Size: 90.6 MB (90573430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f2ffbec596ab34faff4ee823fea1fa4c08c8aa91dab9cf1a1885223d2b2a5a3`  
		Last Modified: Fri, 20 Nov 2026 17:40:19 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fed0a002386efd05b8429b52e72bb9531d97bbd9120a0e4a29f4f958d4ecfd5`  
		Last Modified: Fri, 20 Nov 2026 17:40:19 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jdk-alpine-3.23` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:8359a9f4a4362c34e8cd97c7ee9b297db7e345880e7afc1a41a60114d128e70e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1118469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0d8a999c5aba4604bd1672a3bd27973ca13ab3ff72d00f4ebf5d76dee375597`

```dockerfile
```

-	Layers:
	-	`sha256:ab8e9345b5e4f7ef588bbd7446a8665399663174a080beebb8cfcb1609af80d1`  
		Last Modified: Fri, 20 Nov 2026 17:40:19 GMT  
		Size: 1.1 MB (1097800 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b41bbb8cf5e26d7d8b7090af99d3699da6b65217b4af6487fde150d40c7194b4`  
		Last Modified: Fri, 20 Nov 2026 17:40:19 GMT  
		Size: 20.7 KB (20669 bytes)  
		MIME: application/vnd.in-toto+json
