## `clojure:temurin-27-alpine`

```console
$ docker pull clojure@sha256:5a54b7f0e010d466a65bd4ffe34566d21d04ec1be280ef240fb0dd5bee84cdd7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-27-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:bf4eded47329d47c522da2534fb344dbd84df93c43ec3a63696f3495f8b7a67c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.1 MB (140112445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0322a563f10fd43fd386340e08be7626431a4f21356ef2211d8f4abe115bde5a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Fri, 20 Nov 2026 17:44:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:44:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:44:08 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 17:44:08 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 20 Nov 2026 17:44:08 GMT
ENV JAVA_VERSION=jdk-27.0.1.1+4
# Fri, 20 Nov 2026 17:44:16 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='59acad2d59372019deed763257b4f0b3413399f964462bd64bbf4cf9af6e8367';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.1%2B4/OpenJDK27U-jdk_aarch64_alpine-linux_hotspot_27.0.1.1_4.tar.gz';          ;;        x86_64)          ESUM='5ac34cbeed56fba0456cf94d1d8df3568ab852e196f54abf5172257f3d167dda';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.1%2B4/OpenJDK27U-jdk_x64_alpine-linux_hotspot_27.0.1.1_4.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Fri, 20 Nov 2026 17:44:17 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:44:18 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:44:18 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 17:44:18 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 18:12:01 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 18:12:01 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 18:12:06 GMT
RUN apk add --no-cache curl bash make git rlwrap && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apk del curl # buildkit
# Fri, 20 Nov 2026 18:12:06 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 18:12:06 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 18:12:06 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 18:12:06 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2aeee3b8ca067410568810e0efbd16d57741a1f17966264e9adc3e79c65aa2ae`  
		Last Modified: Fri, 20 Nov 2026 17:44:32 GMT  
		Size: 16.8 MB (16849475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43ec896341e6ca00079991cb3c425ac6747adf09907d6189f7d425b3625f4cba`  
		Last Modified: Fri, 20 Nov 2026 17:44:34 GMT  
		Size: 92.9 MB (92939945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:958614ee38b02262baac252c06d075d9f638dfbc1ebe9535309dd9103094146e`  
		Last Modified: Fri, 20 Nov 2026 17:44:31 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b74833d7c5946623d50d72f9876bd97364829ba185c414134114ce0089bf007`  
		Last Modified: Fri, 20 Nov 2026 17:44:31 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae74a72430c08ae416ce2c4243e81a88683f2b6280cfaaf6c0d9f4daceb12923`  
		Last Modified: Fri, 20 Nov 2026 18:12:17 GMT  
		Size: 26.5 MB (26465209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a965e460bcd71f46046ae37d321dfc10bfc5f414e7bfc0426eea2ea267f0316`  
		Last Modified: Fri, 20 Nov 2026 18:12:16 GMT  
		Size: 618.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:854d29191773732a29284740632b792367d95b2b6998a08ce73ca8a189d06e4e`  
		Last Modified: Fri, 20 Nov 2026 18:12:16 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:614c13a7f31165f7e8cdb2321a59dc264a2123a870bcf6dd056c7c29caad6c1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1197773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe47c02d8b0543cc7652374e99eae4479ca0efcd65060f1042b75bb82ed5b383`

```dockerfile
```

-	Layers:
	-	`sha256:1be10ba9ef5c740415fb6a71bf254f9acce837d6c4f01a4bdab6120d36087ed1`  
		Last Modified: Fri, 20 Nov 2026 18:12:16 GMT  
		Size: 1.2 MB (1182347 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f46d53fcb5e6d920befb7468afed9be54d9f12d76e21d14c04994f0575c0694`  
		Last Modified: Fri, 20 Nov 2026 18:12:16 GMT  
		Size: 15.4 KB (15426 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-alpine` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:54c2e7efbcf4ac1dc618d1cfa1f694d307150f52cc110c5cf82b9f12e46c3f58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.8 MB (139845547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b9651e1d6d2db8d2728659f6d0caea5912ab10622cb73409aee2e0387707454`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Fri, 20 Nov 2026 17:43:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:43:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:43:38 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 17:43:38 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 20 Nov 2026 17:43:38 GMT
ENV JAVA_VERSION=jdk-27.0.1.1+4
# Fri, 20 Nov 2026 17:43:49 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='59acad2d59372019deed763257b4f0b3413399f964462bd64bbf4cf9af6e8367';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.1%2B4/OpenJDK27U-jdk_aarch64_alpine-linux_hotspot_27.0.1.1_4.tar.gz';          ;;        x86_64)          ESUM='5ac34cbeed56fba0456cf94d1d8df3568ab852e196f54abf5172257f3d167dda';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.1%2B4/OpenJDK27U-jdk_x64_alpine-linux_hotspot_27.0.1.1_4.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Fri, 20 Nov 2026 17:43:51 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:43:51 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:43:51 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 17:43:51 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 17:58:04 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 17:58:04 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 17:58:08 GMT
RUN apk add --no-cache curl bash make git rlwrap && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apk del curl # buildkit
# Fri, 20 Nov 2026 17:58:08 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 17:58:08 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 17:58:08 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 17:58:08 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2661c2cca2f3c5f8dee8d0a449607ae963a34a07b733cafc77d1f24028c99a7`  
		Last Modified: Fri, 20 Nov 2026 17:44:07 GMT  
		Size: 17.2 MB (17204320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:091dbb946d3e6219876ab33c96d1de075e89c07107729acc0988974d07d97857`  
		Last Modified: Fri, 20 Nov 2026 17:44:08 GMT  
		Size: 91.8 MB (91827775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1e8ab866c79b790d60c4e8ed14fa9e848a6d68032bf9332e1d71c0fdbac0062`  
		Last Modified: Fri, 20 Nov 2026 17:44:06 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2db787ed6893691295d0621cc1eef284322e32579d35485522037222b0656ad6`  
		Last Modified: Fri, 20 Nov 2026 17:43:53 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:647b609b3fff9ca32415ada5ca0756a2a196e97b3a0afa26680799e502f4a2a3`  
		Last Modified: Fri, 20 Nov 2026 17:58:18 GMT  
		Size: 26.6 MB (26618715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54c4b1ef3ffe1163d3478a874e08553355c52e38ddad139d666f6183a812ee23`  
		Last Modified: Fri, 20 Nov 2026 17:58:17 GMT  
		Size: 619.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a668e1309a45175d790173ba4ed964f183813fd99d30b56276a7d83f3fcfd42`  
		Last Modified: Fri, 20 Nov 2026 17:58:17 GMT  
		Size: 902.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:538e8059ba468a5fb7cf0b545ee1e6f8d9ecc726f4ba0cf4078b96834a0c26ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1347215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68db240e97f8d0658da496121df86f27c4c909a94756a7f5143a6f21a5981e5f`

```dockerfile
```

-	Layers:
	-	`sha256:e89c0bb4308b5d035f7c2ffffb7945ea9fc89a4138d674daf1650e6b6ebc20df`  
		Last Modified: Fri, 20 Nov 2026 17:58:17 GMT  
		Size: 1.3 MB (1331696 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:348f8ffe1e91dbedb9fdcfbac6806b2e4f7c9f5cf41a58621d500279b2956e48`  
		Last Modified: Fri, 20 Nov 2026 17:58:17 GMT  
		Size: 15.5 KB (15519 bytes)  
		MIME: application/vnd.in-toto+json
