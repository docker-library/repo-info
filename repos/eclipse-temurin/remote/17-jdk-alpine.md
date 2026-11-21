## `eclipse-temurin:17-jdk-alpine`

```console
$ docker pull eclipse-temurin@sha256:c4ca466f9ff25bdb4d28ff87199655c027d37b00226469e61d53f5fa11aae873
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:17-jdk-alpine` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:bdf000e05820e32750a6d690aea31f893572b4e6ad2564b8501ae022c9f6336e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.0 MB (173040756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce6b6bb7bb0362a1c81e70faf2e9f61b0b81c15a079e8287031c0423f1af5feb`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Fri, 20 Nov 2026 17:42:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:42:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:42:18 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 17:42:18 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 20 Nov 2026 17:42:18 GMT
ENV JAVA_VERSION=jdk-17.0.21.1+2
# Fri, 20 Nov 2026 17:42:24 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='4ac50955ad93051e45280c4edabae97c7c9ca4e1d2842c4e430e5b7d9960a570';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jdk_x64_alpine-linux_hotspot_17.0.21.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 20 Nov 2026 17:42:26 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:42:26 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:42:26 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 17:42:26 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d553e9dc39faa28c406ca51894ba199ff6bb3b22473cd414e47916c577731a6c`  
		Last Modified: Fri, 20 Nov 2026 17:42:41 GMT  
		Size: 23.9 MB (23926088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80a64586faf2f7b02e98311fa9ad99626b476fe2512f9e4cd3b5cf27af7c8e32`  
		Last Modified: Fri, 20 Nov 2026 17:42:44 GMT  
		Size: 145.3 MB (145258407 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ce1022f67cd011c4cbb3061bd8266d48f370237a9de02c250e3830d2eec16c5`  
		Last Modified: Fri, 20 Nov 2026 17:42:40 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1590f96c37e5f6a13b4a8b5f7b3eb26825426c15f95077c29a0f2958c940e8e3`  
		Last Modified: Fri, 20 Nov 2026 17:42:40 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jdk-alpine` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:4f7e3a8135a3201d8fc11ec4c8780b8bce4044a43c30ef2a78a1531346a84048
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1109346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dc14e422e07252e3569b60fe903a51e0b0d0eafe9033c3e57d2914169ab6cc8`

```dockerfile
```

-	Layers:
	-	`sha256:75d7e9c9c15e0e2378b3240957cb1808ce045d9a0d8a28b5bc94cfc17c67bb2f`  
		Last Modified: Fri, 20 Nov 2026 17:42:40 GMT  
		Size: 1.1 MB (1088715 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6b8d3342f5c9dafb04e74c61748bab75f27ddce382aea37f91d41c193d018483`  
		Last Modified: Fri, 20 Nov 2026 17:42:40 GMT  
		Size: 20.6 KB (20631 bytes)  
		MIME: application/vnd.in-toto+json
