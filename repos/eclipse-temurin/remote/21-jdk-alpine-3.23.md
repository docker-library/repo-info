## `eclipse-temurin:21-jdk-alpine-3.23`

```console
$ docker pull eclipse-temurin@sha256:28122dc4b448e4ab15633fc8b7c10e52841015ffe4272fe70bc1a7404053a579
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `eclipse-temurin:21-jdk-alpine-3.23` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:aa2b4fe7c870088ad91b074cef8bd5a94eeb2d38c2a277fbe012692d75fb17fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.9 MB (183876784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28faacca009b1512e8a9a231c054ccba75d3f83df6069d662d602222cc1999ef`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Fri, 20 Nov 2026 17:43:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:43:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:43:15 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 17:43:15 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 20 Nov 2026 17:43:15 GMT
ENV JAVA_VERSION=jdk-21.0.13.1+2
# Fri, 20 Nov 2026 17:43:27 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='8e3ef290b2c182fed0f4318dfb928cde1f5b95bf5c28ff4bb236d38b0b177a74';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jdk_aarch64_alpine-linux_hotspot_21.0.13.1_2.tar.gz';          ;;        x86_64)          ESUM='87af8e1557222db2a29c9d055c34a317916b4ddbdb91474d04b35229d337193e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jdk_x64_alpine-linux_hotspot_21.0.13.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 20 Nov 2026 17:43:28 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:43:29 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:43:29 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 17:43:29 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8a78e67e7fde5a4d4569725ef212807cbf9840844212924ad47ae7dfc787b91`  
		Last Modified: Fri, 20 Nov 2026 17:43:44 GMT  
		Size: 21.4 MB (21375920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c51b835c6205f28ebbe3d63339c76045cd18a9577da4713a69dfb180cca27bf9`  
		Last Modified: Fri, 20 Nov 2026 17:43:47 GMT  
		Size: 158.6 MB (158645687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89fedfdba7dfe52ec406bcd02db9230f6961cb678d3d1aa404746477d49232c6`  
		Last Modified: Fri, 20 Nov 2026 17:43:40 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e2ce3468f3a9d393a593cc095db854dd4b6b3a6cdd827401a28587a058e7fdc`  
		Last Modified: Fri, 20 Nov 2026 17:43:43 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jdk-alpine-3.23` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:86a08d2bae79620962d7d1584c0d4b3e234bf891b1c294605a48d01c749d3c7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1110045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0644ddf2bc4dcfaae161106ebaa0c9b77223fb18e307f1d256f041aa41693541`

```dockerfile
```

-	Layers:
	-	`sha256:4643d22d2306f163d222e0552c366c2c9145cb3bb4fcb4e1712c2f82f8522881`  
		Last Modified: Fri, 20 Nov 2026 17:43:43 GMT  
		Size: 1.1 MB (1089595 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:34110fdc8736074341ec84a5f96489df896f5e44a8166405ccc4d09ea884fb1d`  
		Last Modified: Fri, 20 Nov 2026 17:43:43 GMT  
		Size: 20.4 KB (20450 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jdk-alpine-3.23` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:2d6e261d786dcf2f7e1b3e89d8822d37a4a0f8daca7ee34b20f605a5e94e1c55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.2 MB (182229229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df3de088695a56373681f4c075ec19472fc486b70343724cb6cc76ced5abd1a6`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Fri, 20 Nov 2026 17:43:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:43:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:43:05 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 17:43:05 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 20 Nov 2026 17:43:05 GMT
ENV JAVA_VERSION=jdk-21.0.13.1+2
# Fri, 20 Nov 2026 17:43:13 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='8e3ef290b2c182fed0f4318dfb928cde1f5b95bf5c28ff4bb236d38b0b177a74';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jdk_aarch64_alpine-linux_hotspot_21.0.13.1_2.tar.gz';          ;;        x86_64)          ESUM='87af8e1557222db2a29c9d055c34a317916b4ddbdb91474d04b35229d337193e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jdk_x64_alpine-linux_hotspot_21.0.13.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 20 Nov 2026 17:43:14 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:43:14 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:43:14 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 17:43:14 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1b3ee7526f1ec7c705c45e91213c685b2b04222fcf3ee0886922721ed800ede`  
		Last Modified: Fri, 20 Nov 2026 17:43:31 GMT  
		Size: 21.4 MB (21366253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad896c3d504d29d1260349781092f290670e1f4a635480198c3dfd1331e18dc5`  
		Last Modified: Fri, 20 Nov 2026 17:43:34 GMT  
		Size: 156.7 MB (156670164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a6444fd4817718df23553700dfc5ee0f0efea0c979f29b1fd550a399ebed11f`  
		Last Modified: Fri, 20 Nov 2026 17:43:30 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f08c17cd223823e61e11def1838408ec5a5b9ed8581eca5eeadfd21684ed4a17`  
		Last Modified: Fri, 20 Nov 2026 17:43:30 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jdk-alpine-3.23` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:6c2b8f1d10fafd69a908f369cf9d03ff49e4bee19736f48e347a837a61efe950
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1259519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e284fb4a67832bc2a0126bec0e878d0782d533aa37717d2c700396a2a7a5526`

```dockerfile
```

-	Layers:
	-	`sha256:7fe44d91d14602aea878fdadbe4c83e1707e3e3af09ea0299bcd7c7f8f62e309`  
		Last Modified: Fri, 20 Nov 2026 17:43:30 GMT  
		Size: 1.2 MB (1238947 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:318e163e66effe4bd20fc10a28889217c5b22e20e33efd7bdc25bb02da7233e5`  
		Last Modified: Fri, 20 Nov 2026 17:43:30 GMT  
		Size: 20.6 KB (20572 bytes)  
		MIME: application/vnd.in-toto+json
