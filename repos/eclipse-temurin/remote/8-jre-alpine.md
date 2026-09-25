## `eclipse-temurin:8-jre-alpine`

```console
$ docker pull eclipse-temurin@sha256:843befa45f01b959b80066fef3031f89c78fc87d3bce0813e9cb72974880c1c2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:8-jre-alpine` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:5a0c3a71da1fc869030e18de2979e0f2a6d3ce27aded6cc450ae135c25c1777c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.1 MB (63065627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68d6902bca9deaba84d5de4b208a43112155c4643bb774fc00c466753e2fbb89`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Fri, 25 Sep 2026 22:35:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:35:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:35:04 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:35:04 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 25 Sep 2026 22:35:04 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Fri, 25 Sep 2026 22:35:06 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='0b8a29d654d4ea5cd2ee7bbcf3e89fe0f66596eb17870255e683a526757d2b8c';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_x64_alpine-linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 25 Sep 2026 22:35:06 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:35:06 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:35:06 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d3daccf082f0d6dd742c035c3462b3d39cf08cfd1ab9f511c1d592fa15d8d96`  
		Last Modified: Fri, 25 Sep 2026 22:35:16 GMT  
		Size: 17.0 MB (16972202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2870e607372787f4f31fec896dcf251293e3bed3c184cd81abda7515f458fe9a`  
		Last Modified: Fri, 25 Sep 2026 22:35:17 GMT  
		Size: 42.2 MB (42241097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4322d4646afa6a5302dd97fd849d0c9323709541698bef7ad97cc183fbbeef3a`  
		Last Modified: Fri, 25 Sep 2026 22:35:16 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2095c2050aebbbeea6b4f4cd0b2c81ea66dfadeabe849ba5c2b87bf5ac0acfee`  
		Last Modified: Fri, 25 Sep 2026 22:35:07 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jre-alpine` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:6657fb4fac42505c9a4b38455630957b5ae15911c15a5a828e7cc623efaf0dd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **936.6 KB (936591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eff2d098f576ac2bacbda2a51a5131e42b07541c6d4fdbcbac856ea14d0dc86f`

```dockerfile
```

-	Layers:
	-	`sha256:91944f2f28e812470518a3b6dbe96a8c5f3944a9045041032254d40a629b8fae`  
		Last Modified: Fri, 25 Sep 2026 22:35:16 GMT  
		Size: 917.7 KB (917732 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e1e92cda0604ee3d38c6518189dd53b0428af6d6d4dd58ed43bd83a1f91826e5`  
		Last Modified: Fri, 25 Sep 2026 22:35:16 GMT  
		Size: 18.9 KB (18859 bytes)  
		MIME: application/vnd.in-toto+json
