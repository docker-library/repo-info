## `eclipse-temurin:17-jdk-alpine-3.21`

```console
$ docker pull eclipse-temurin@sha256:c7c5c1de05bbf72732f32d551a3baca519c55e46bae3189a71b5d554b8d74838
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:17-jdk-alpine-3.21` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:200806a442389a8b604cb6a547013abea8d622624028b826160e74ea6f89ec36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.6 MB (169623414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d763cba694b443cc3038105591ddf50fc624b88264059175291d11cc08bd84e1`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 17 Sep 2026 20:38:22 GMT
ADD alpine-minirootfs-3.21.8-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:38:22 GMT
CMD ["/bin/sh"]
# Fri, 25 Sep 2026 22:36:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:36:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:36:25 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:36:25 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 25 Sep 2026 22:36:25 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Fri, 25 Sep 2026 22:36:31 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='0c4fcdefa2737ccd66e049245fdb9dc431f91796182141204cd5f8192cb288e6';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_alpine-linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 25 Sep 2026 22:36:32 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:36:32 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:36:32 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 22:36:32 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:16333ee0c00fc65e025a2a4f839703ad37a74728832977fbdf080984de1b8e5a`  
		Last Modified: Thu, 17 Sep 2026 20:38:28 GMT  
		Size: 3.6 MB (3626020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4701aba57dda26d4f0a3f2d2f7a198a820d4a6037e556a9be28a03ab66ac1bd0`  
		Last Modified: Fri, 25 Sep 2026 22:36:47 GMT  
		Size: 21.0 MB (21021836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29f7fb9f231cffb924a408685013178937da72154d3a82361565f264e90c447a`  
		Last Modified: Fri, 25 Sep 2026 22:36:50 GMT  
		Size: 145.0 MB (144972965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59926915dc421266f662923d53a0a004030efa4d4fe78d6de280d9fbc71573ad`  
		Last Modified: Fri, 25 Sep 2026 22:36:46 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3480ef4ae8245cae93a27ddd2999006e5d321cb3675ccfd52cc8c28595fded52`  
		Last Modified: Fri, 25 Sep 2026 22:36:46 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jdk-alpine-3.21` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:a1bc1744076fb71bd594bf0299cc2220a5ae7ef5fe5eba205b464fb2928bc6c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1106466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57241904fe495cb1dd83c2c942fb78c53e325f5afb987428563cdb517ebf1b84`

```dockerfile
```

-	Layers:
	-	`sha256:1c60d795163dd4367bde20f82a44ce2950694c83931767e301a51c9699ae1c96`  
		Last Modified: Fri, 25 Sep 2026 22:36:46 GMT  
		Size: 1.1 MB (1086835 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:41775f2a16419f54b910f272adad8c23a2f4175026205d56ce63958312ebc94e`  
		Last Modified: Fri, 25 Sep 2026 22:36:46 GMT  
		Size: 19.6 KB (19631 bytes)  
		MIME: application/vnd.in-toto+json
