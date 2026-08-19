## `azul-zulu:21-jdk-debian`

```console
$ docker pull azul-zulu@sha256:b3b9398af3e160aa6f36d2f446b1d2fad1653cb3c29833b5c4fb098cb5fce0da
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-jdk-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:537403f015df8e795943690362845d8fb6f91443726612a646537b939bb71224
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.8 MB (194816610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23a60a42626db2182e2cd98b74b9e037f42e3ee9ad2d4ca38f54ee0b768357c7`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 19 Aug 2026 17:36:37 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:36:37 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:36:37 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.12.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 19 Aug 2026 17:36:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Wed, 19 Aug 2026 17:36:37 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd447a1dc79e8fbe1b74fe67495ec284f1011d074be1af3107533e2e69ba9e69`  
		Last Modified: Wed, 19 Aug 2026 17:36:53 GMT  
		Size: 165.0 MB (165035845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jdk-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:a53ce32eeaa10db4a64906b0ee1b963f08ab343f9ebf28fc331ec3febb04b6d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0325b8a54b2172862b085dd1dd4999322d0c344afd6f4dd4e059bfbfd9cb921`

```dockerfile
```

-	Layers:
	-	`sha256:9eadd8305d29cc9a5894053f7d5c449522017fee8dec69ef507f86d9abd16e9b`  
		Last Modified: Wed, 19 Aug 2026 17:36:50 GMT  
		Size: 9.5 KB (9517 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-jdk-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:44af7632e6fbad8e26a4a8a7666e5ec3a5fb4a0d808701b2ed8428dd5383e9bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.5 MB (194460413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecd6f2fce4df2ec95b48e2331077b5cf400644a3cb3cdfbd375ccafe9e371d3b`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 19 Aug 2026 17:36:41 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:36:41 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:36:41 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.12.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 19 Aug 2026 17:36:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Wed, 19 Aug 2026 17:36:41 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f2f1b94e1ff002736d15f4988a02323fe0aecd6ac7a00d517cfca9ffb18c271`  
		Last Modified: Wed, 19 Aug 2026 17:36:58 GMT  
		Size: 164.3 MB (164316804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jdk-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:5cafa9aa76a4b1af0c0e67edf87e88cc1202caa2875db41fefd8a9952723496d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bef922ee00dca4d0b09e393321512d31ae32b165bddaeae4256a64430fcc302`

```dockerfile
```

-	Layers:
	-	`sha256:5593998831eccbbc8f48418fa802b5219ecbe3c78d66d83b5003f87aee1abc25`  
		Last Modified: Wed, 19 Aug 2026 17:36:55 GMT  
		Size: 9.6 KB (9633 bytes)  
		MIME: application/vnd.in-toto+json
