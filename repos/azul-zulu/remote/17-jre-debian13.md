## `azul-zulu:17-jre-debian13`

```console
$ docker pull azul-zulu@sha256:5758eb14279d2a680df7e8258feaa1883518ec98e56136fb5f19741306fa9c1e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-jre-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:c0d5493386d27849f8fed9df641317d0d68127fc9c19cd072424c5ce6896427b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.9 MB (100930449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2db0e89582e4d085c3e3280d9854cd6f79ec0092f435ada80d7a823f2e77a605`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:42:47 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 05 Aug 2026 00:42:47 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:42:47 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.20-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 05 Aug 2026 00:42:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f90a93243058ae2159e88d9f78eb695d7f9e73aad51fd8eaa9e6a862c1706fd9`  
		Last Modified: Wed, 05 Aug 2026 00:42:59 GMT  
		Size: 71.1 MB (71149684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:078940185d0410062212f6fcae1243d59605ecc920836b2e68b5be7715d3381f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3eb3608a299cf82d9659f874e1361bb9ec11e59e0eaac04148c93b96d23f60df`

```dockerfile
```

-	Layers:
	-	`sha256:990418e2c6554a1b6d46ea2a32d3ac0d2f175c1cd74764895909f2d9bc759edb`  
		Last Modified: Wed, 05 Aug 2026 00:42:57 GMT  
		Size: 9.2 KB (9190 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-jre-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:1632204905a0e7382ae0f7cb2bb6208430fbd7ab09f40aca7849c1573617020c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.3 MB (101304600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:032a8136298a33fd6eb1f6fd5a0e800b759f1d0a2e65be68db222d2a244b9e62`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:45:32 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 05 Aug 2026 00:45:32 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:45:32 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.20-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 05 Aug 2026 00:45:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:815fe53e3ddc0f64e3e82c7591f1f0c3a43d1c504525d353bd1aabe83c4ce278`  
		Last Modified: Wed, 05 Aug 2026 00:45:44 GMT  
		Size: 71.2 MB (71160991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:b39dfde3a3e08f168158cdf0fe0e5588213abb088b8121296570f50dbbe3d184
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a03e1e5e003786c816599fc340e77c44f0a4d2cd778fca0e8174a8b52b1894a5`

```dockerfile
```

-	Layers:
	-	`sha256:8804c74fb9a5720a2e54551cf79042766ea89fee89b0d1e6550ae52103ee4155`  
		Last Modified: Wed, 05 Aug 2026 00:45:41 GMT  
		Size: 9.3 KB (9294 bytes)  
		MIME: application/vnd.in-toto+json
