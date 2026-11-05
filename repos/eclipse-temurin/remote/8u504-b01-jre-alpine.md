## `eclipse-temurin:8u504-b01-jre-alpine`

```console
$ docker pull eclipse-temurin@sha256:fe7a429f36bf0f31e9cd0c2e750fda03a5cce3718c3b84cef7beeee1f21cc4c1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:8u504-b01-jre-alpine` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:97224954e11b18c403105ce8818b6c3f65705a1f4942abe6809189f27af48a63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.1 MB (63067210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b614763eaa3dc0bf3c547cfd158ecf7da9e4c14d18b2a315568afc4ea28f42cc`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:17:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 19:17:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:17:30 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 05 Nov 2026 19:17:30 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 05 Nov 2026 19:17:30 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Thu, 05 Nov 2026 19:17:33 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        x86_64)          ESUM='0b8a29d654d4ea5cd2ee7bbcf3e89fe0f66596eb17870255e683a526757d2b8c';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_x64_alpine-linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Thu, 05 Nov 2026 19:17:33 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Thu, 05 Nov 2026 19:17:33 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:17:33 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d99ac440d39bbade5ae9f2dd56b69d8234c4e540282df61003829295761e4fe`  
		Last Modified: Thu, 05 Nov 2026 19:17:43 GMT  
		Size: 17.0 MB (16969910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e81640a03f3bcf0ea78d6a824ffa828c4fa6b3fda34144adfafc8826a30c05a`  
		Last Modified: Thu, 05 Nov 2026 19:17:44 GMT  
		Size: 42.2 MB (42241039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0eafab007d0956f12e840289228be4fcaa76f63f4643556b32280d737571412d`  
		Last Modified: Thu, 05 Nov 2026 19:17:42 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:758608ae57b3ebd9cc45e7fc1f4b5baae92c3bfa9f709f371f4a3d571edb804c`  
		Last Modified: Thu, 05 Nov 2026 19:17:43 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u504-b01-jre-alpine` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:69871f87345a7f398c2f150b8d8da919ca3ed323de61e7f39f3affe97b9b3b74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **935.4 KB (935393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8304ca1c92c04670e8236e78226f733cba82036edda9b2dd9bf3c158d91d4f65`

```dockerfile
```

-	Layers:
	-	`sha256:83a752881d37afd0878b8c744dd593ff76037cd37c03f6a40405789e01b244d9`  
		Last Modified: Thu, 05 Nov 2026 19:17:43 GMT  
		Size: 915.8 KB (915799 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62f61dc3f8c4ad08a2e846875500888f19b59f3ec306465cb36a3f8ab4f39976`  
		Last Modified: Thu, 05 Nov 2026 19:17:42 GMT  
		Size: 19.6 KB (19594 bytes)  
		MIME: application/vnd.in-toto+json
