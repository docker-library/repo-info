## `clojure:temurin-11-alpine`

```console
$ docker pull clojure@sha256:5043a0336b624a322d653fb46c61da3d1791c0009f933fa0d9e17abed6aaa96b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `clojure:temurin-11-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:caa40dc86d0665c44f9b60e5beb57d49f87be1731a4a4fbe939bdb63d17c9148
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.3 MB (187342897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9da0fdfa67fe142edfc59a2ed320b9ca3614bcffc8659961e9f99031679a23e3`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["clj"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:40:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 17 Sep 2026 21:40:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:40:09 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 17 Sep 2026 21:40:09 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 17 Sep 2026 21:40:09 GMT
ENV JAVA_VERSION=jdk-11.0.32+9
# Thu, 17 Sep 2026 21:40:19 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='be9831861b7a4b5fc8ec0d9540d462230f6b9bd6c7ee29585ec1ce52d1435d6c';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_x64_alpine-linux_hotspot_11.0.32_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 17 Sep 2026 21:40:20 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 17 Sep 2026 21:40:20 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:40:20 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 17 Sep 2026 21:40:20 GMT
CMD ["jshell"]
# Thu, 17 Sep 2026 22:34:01 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 17 Sep 2026 22:34:01 GMT
WORKDIR /tmp
# Thu, 17 Sep 2026 22:34:05 GMT
RUN apk add --no-cache curl bash make git rlwrap && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apk del curl # buildkit
# Thu, 17 Sep 2026 22:34:05 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 17 Sep 2026 22:34:05 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41f79fa0cffa294f31971572d2080d75052ea5a5d2401177495d9a27b425198d`  
		Last Modified: Thu, 17 Sep 2026 21:40:33 GMT  
		Size: 17.0 MB (16972097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d03598bdba80e6dd008d9c97fbd135bb19831f1e4183272a20a91249a19e142`  
		Last Modified: Thu, 17 Sep 2026 21:40:36 GMT  
		Size: 141.0 MB (141034046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f5e04250d4dd6c4300d6374c7d23ee721384ea564723d3cb33391f7d46be97d`  
		Last Modified: Thu, 17 Sep 2026 21:40:32 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6be9d3cb92a2a79e4e19586d762ff97388f418fd4e5a0fd241b6dda0c8c56946`  
		Last Modified: Thu, 17 Sep 2026 21:40:32 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:613cfa5d0c70f1ca9ae134d084e85fef972ad4873dab7e0106271838c713e447`  
		Last Modified: Thu, 17 Sep 2026 22:34:14 GMT  
		Size: 25.5 MB (25483781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e2f95f01b1d85e002b1b38d0c95491a49a9b3ce7229120bb935f81bd278bfa3`  
		Last Modified: Thu, 17 Sep 2026 22:34:13 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:31af61bdbc1aa15354f80399fcb693a1fbcd25e17222209ad40fe720f383311a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1205699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b30c6066c515e0b05c821e6fca4f91e99c4e725687555979c7e97b95207f7f85`

```dockerfile
```

-	Layers:
	-	`sha256:eadfe221fd75085a27a7875f22774c93bc137dae929d6c49f854495c954d846d`  
		Last Modified: Thu, 17 Sep 2026 22:34:13 GMT  
		Size: 1.2 MB (1192304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:36eeab79d1b7d53ff8522aa887052c8ac9bf5d0d2c2bf3266c81bfe6bcce877e`  
		Last Modified: Thu, 17 Sep 2026 22:34:13 GMT  
		Size: 13.4 KB (13395 bytes)  
		MIME: application/vnd.in-toto+json
