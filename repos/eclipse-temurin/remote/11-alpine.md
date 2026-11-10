## `eclipse-temurin:11-alpine`

```console
$ docker pull eclipse-temurin@sha256:1caccc9ade9b6962a76733013084e807279c7d8b4cf396f9a9e19b1639d3779f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:11-alpine` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:6233f977235637cfe3fd8badf89e32daf849049d9e17bda456b42a4b4c73fd74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.9 MB (161938909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b61cdb79f7490756171e5d35b70f0396de90047e2e2bf1933a2e5bfb1b0e3377`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Mon, 09 Nov 2026 23:34:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 09 Nov 2026 23:34:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Nov 2026 23:34:26 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 09 Nov 2026 23:34:26 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Mon, 09 Nov 2026 23:34:26 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Mon, 09 Nov 2026 23:34:34 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='d9deaccb8137409f91acdcfaa24e7c4b247163b425b29c33fe536c78f75dc237';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_x64_alpine-linux_hotspot_11.0.33_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Mon, 09 Nov 2026 23:34:35 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 09 Nov 2026 23:34:35 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 09 Nov 2026 23:34:35 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 09 Nov 2026 23:34:35 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:988e86b75ce5893497df5e950dd7803906a8554637ae638454fb31abc69d40d0`  
		Last Modified: Mon, 09 Nov 2026 23:34:50 GMT  
		Size: 17.0 MB (16970007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0ce866993379e44ba3dc737d023b890c56256deec4066c2bd0fd620e052c8e9`  
		Last Modified: Mon, 09 Nov 2026 23:34:53 GMT  
		Size: 141.1 MB (141112637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3aed64a33717401621ed9d51fa5e5025d31e675e4b8d1ccb774c074ed308948e`  
		Last Modified: Mon, 09 Nov 2026 23:34:49 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a461774148294f924e776f23814c5347f5131bb9a6e0bdfb09889ba061bb3fe`  
		Last Modified: Mon, 09 Nov 2026 23:34:50 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-alpine` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:ae09656c54e57582c0cf5fe1f74a05a2b0d09c813575889350dfe407382757db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1009569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e70db7aae2f5e28ca5403d14b214e335548b9739e1d38f24725ba0e2e21096d`

```dockerfile
```

-	Layers:
	-	`sha256:629e58dc4bd8ec6bce71d1bcccb211826ed3f0146a276c20a3acd4577fcd6c41`  
		Last Modified: Mon, 09 Nov 2026 23:34:50 GMT  
		Size: 989.4 KB (989394 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b47c86c6fe8fd56f7b5f9450cbbb9ad60734991e66ade43629103c668a6d9087`  
		Last Modified: Mon, 09 Nov 2026 23:34:49 GMT  
		Size: 20.2 KB (20175 bytes)  
		MIME: application/vnd.in-toto+json
