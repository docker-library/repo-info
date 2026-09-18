## `eclipse-temurin:17-jre-alpine-3.21`

```console
$ docker pull eclipse-temurin@sha256:1efe1da971880bfafdeb2807478a1b72f44787437191704214d59f670e29ec55
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:17-jre-alpine-3.21` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:3622d9370b447d387c6fb97fc15eb26f0d68f3a7cd04347d88e80f37a553aa37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.1 MB (67054772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28612a78922e9fbe5f47d4408927abc09af2498d724ed4448ada2838ebd1b05d`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:38:22 GMT
ADD alpine-minirootfs-3.21.8-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:38:22 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:40:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 17 Sep 2026 21:40:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:40:49 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 17 Sep 2026 21:40:49 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 17 Sep 2026 21:40:49 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Thu, 17 Sep 2026 21:40:51 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='561ea743b8481ed75bf095bff8d156943360f3a6c0ba808215b946f73fc3b89a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_x64_alpine-linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Thu, 17 Sep 2026 21:40:52 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 17 Sep 2026 21:40:52 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:40:52 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:16333ee0c00fc65e025a2a4f839703ad37a74728832977fbdf080984de1b8e5a`  
		Last Modified: Thu, 17 Sep 2026 20:38:28 GMT  
		Size: 3.6 MB (3626020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:867b42ee20b9be9ae2d036707ee8e38dd292f73597bda4a8db32455969aa76ec`  
		Last Modified: Thu, 17 Sep 2026 21:41:02 GMT  
		Size: 16.2 MB (16240564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58abe8c84d35515d383b33b0fb50c28948d407cfa83cdb6d8052005cebabc435`  
		Last Modified: Thu, 17 Sep 2026 21:41:03 GMT  
		Size: 47.2 MB (47185598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15aee7cb2a301607dc02510a9c3adf54bd66126cf6b1d60a85561bdbbddf60c9`  
		Last Modified: Thu, 17 Sep 2026 21:41:01 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cb434d94307643c6a23bbfd216d2f6f4c64599139fb2e0840d044236a795003`  
		Last Modified: Thu, 17 Sep 2026 21:41:01 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-alpine-3.21` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:6b63cdcb7fabd581cf4bbb1aeca25a4e0b48e2888ae54cfbd11581f3746621e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **899.3 KB (899309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:554bfb8dbdf1dc4827d8fcb4e421fbce90dcf4152b7b9b74fd8b6cc523a6fa21`

```dockerfile
```

-	Layers:
	-	`sha256:51774b84172af6ba97be5ae26014d66f07410d81530cb3a6b5b23095d436b373`  
		Last Modified: Thu, 17 Sep 2026 21:41:02 GMT  
		Size: 881.1 KB (881095 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:980dbda723a2a2758dddb341d08fcc6f9880a9fc552d7cf595bfec7f8304201b`  
		Last Modified: Thu, 17 Sep 2026 21:41:02 GMT  
		Size: 18.2 KB (18214 bytes)  
		MIME: application/vnd.in-toto+json
