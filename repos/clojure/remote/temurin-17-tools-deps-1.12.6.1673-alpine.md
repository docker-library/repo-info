## `clojure:temurin-17-tools-deps-1.12.6.1673-alpine`

```console
$ docker pull clojure@sha256:afcb6ee3c1dbf3a1cae521dc7212837299bb4dd434dfbcb2e8e538c1fcafb209
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-1.12.6.1673-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:cec0447b3f21bd31f9c835c98423bf95e8bcb5e521ee9c551a58af3205a3bb13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.7 MB (195674873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e47a42c74395884f018e9a3e4f5c8255744e4163ad7093acbaf76f0d3e485f3`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Fri, 25 Sep 2026 22:36:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:36:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:36:22 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:36:22 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 25 Sep 2026 22:36:22 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Fri, 25 Sep 2026 22:36:29 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='0c4fcdefa2737ccd66e049245fdb9dc431f91796182141204cd5f8192cb288e6';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_alpine-linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 25 Sep 2026 22:36:30 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:36:30 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:36:30 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 22:36:30 GMT
CMD ["jshell"]
# Fri, 25 Sep 2026 23:21:11 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 25 Sep 2026 23:21:11 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:21:14 GMT
RUN apk add --no-cache curl bash make git rlwrap && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apk del curl # buildkit
# Fri, 25 Sep 2026 23:21:14 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 25 Sep 2026 23:21:14 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:21:14 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:21:14 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d03e63f99bb217b1f7ee413f177f42ba8fe72c8aff59fe998b0112c9e23649a2`  
		Last Modified: Fri, 25 Sep 2026 22:36:44 GMT  
		Size: 21.4 MB (21442498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:271b0c979ba5426534d499a4752db1936fee768304d2ed1a152b5e9b1da7d607`  
		Last Modified: Fri, 25 Sep 2026 22:36:47 GMT  
		Size: 145.0 MB (144973019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6aaaca2d8bd94e9347308b5e6a8928f795d6a3c376d73e73210662d948346504`  
		Last Modified: Fri, 25 Sep 2026 22:36:43 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fb0ff8d01777a4fc494bddb9df1f3d50d8ea89fbdd2f4d95b7c4e25672e9617`  
		Last Modified: Fri, 25 Sep 2026 22:36:43 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c0204ecdd3414384a7cd2117476dfbd4186ce97f8ddb283e5f3eefc75ad3ef0`  
		Last Modified: Fri, 25 Sep 2026 23:21:23 GMT  
		Size: 25.4 MB (25405977 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:087666034c514ce9be0170f3623ba6cdab6b7faaceacaccbe741efba433bbe42`  
		Last Modified: Fri, 25 Sep 2026 23:21:22 GMT  
		Size: 618.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36926afe25029879cb59630e7aba3dc95e1686201cd42a57c736a7407a762268`  
		Last Modified: Fri, 25 Sep 2026 23:21:22 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:2900720e4af26f4f94ddd42a099309888f7ea9700e2c6b4d508967ac93aeb57e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1304063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb7cafb5622f38fb41b64babc7d88466cd27e021975252e4e594ca6c5fe94b32`

```dockerfile
```

-	Layers:
	-	`sha256:8c4c7d72a98bf3f2404e825e7f65a486388ed19e040784ec534ecdce7e7ada55`  
		Last Modified: Fri, 25 Sep 2026 23:21:22 GMT  
		Size: 1.3 MB (1288631 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3e43e260311e5562d4b44e33a57fcd18fde9028e1e06cc5d71f1a4c1387f90e3`  
		Last Modified: Fri, 25 Sep 2026 23:21:22 GMT  
		Size: 15.4 KB (15432 bytes)  
		MIME: application/vnd.in-toto+json
