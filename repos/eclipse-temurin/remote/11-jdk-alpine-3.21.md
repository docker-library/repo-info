## `eclipse-temurin:11-jdk-alpine-3.21`

```console
$ docker pull eclipse-temurin@sha256:eb0e990e07eadee0a6b5479ef8f69ae66c4aae0f12ec0f7e43a1a1f0500a7526
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:11-jdk-alpine-3.21` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:6e5408e5ab6d737373c378f0ee38c0c1a26a4607657bc33e5ad955bec9ca0b5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.9 MB (160903113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce1db554b6c6656a51ffb5e5a29f714728550bdae0e6cd2edb9b27548aa84c71`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 17 Sep 2026 20:38:22 GMT
ADD alpine-minirootfs-3.21.8-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:38:22 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:40:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 17 Sep 2026 21:40:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:40:18 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 17 Sep 2026 21:40:18 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 17 Sep 2026 21:40:18 GMT
ENV JAVA_VERSION=jdk-11.0.32+9
# Thu, 17 Sep 2026 21:40:23 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='be9831861b7a4b5fc8ec0d9540d462230f6b9bd6c7ee29585ec1ce52d1435d6c';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_x64_alpine-linux_hotspot_11.0.32_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 17 Sep 2026 21:40:25 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 17 Sep 2026 21:40:25 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:40:25 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 17 Sep 2026 21:40:25 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:16333ee0c00fc65e025a2a4f839703ad37a74728832977fbdf080984de1b8e5a`  
		Last Modified: Thu, 17 Sep 2026 20:38:28 GMT  
		Size: 3.6 MB (3626020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5535b3c159abc50ebcf3766f377510ce781d52828501d27e14c44f99491b037`  
		Last Modified: Thu, 17 Sep 2026 21:40:39 GMT  
		Size: 16.2 MB (16240559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:140b768ef58126081422bb678aff2e64359549677cfec3c474ecbeeac4b62c63`  
		Last Modified: Thu, 17 Sep 2026 21:40:42 GMT  
		Size: 141.0 MB (141033945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f9589662084e2ff1bb97bc78b9c51dd40f668440acd99f5f9feff97a0431d1e`  
		Last Modified: Thu, 17 Sep 2026 21:40:38 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59f155dab0f54fa44c105bc4b64bff2a9bac02b2e4247e1bd330d965b5ed1fe1`  
		Last Modified: Thu, 17 Sep 2026 21:40:29 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jdk-alpine-3.21` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:c710d84d334a459952a4a1525a48b55ab6eb0ee999e764041a7479249fa4acd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1003635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46c7a28e9bad7ce765c4095ec808b68e46456638e49c397fc5ba5cc3cb31c723`

```dockerfile
```

-	Layers:
	-	`sha256:d9c96e40fb1e6d4f6768731dbfff5c197ff4335e8cefe3945086282e5358ddab`  
		Last Modified: Thu, 17 Sep 2026 21:40:39 GMT  
		Size: 984.5 KB (984465 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b35201d28aab2dacbec3876407e3c573a8409d0de95582fb238bf2cc9ce0347`  
		Last Modified: Thu, 17 Sep 2026 21:40:39 GMT  
		Size: 19.2 KB (19170 bytes)  
		MIME: application/vnd.in-toto+json
