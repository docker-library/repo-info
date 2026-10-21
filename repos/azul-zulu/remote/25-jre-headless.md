## `azul-zulu:25-jre-headless`

```console
$ docker pull azul-zulu@sha256:306df695755ba188a3e7cee64c9ecab485a0969c717c1d5aaa13060e76197dd4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-jre-headless` - linux; amd64

```console
$ docker pull azul-zulu@sha256:1539291ef100643360d9f5f9d9256da1a82e5401e372d096f70dc0dd67932db5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.4 MB (118354436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf502af86bb7f3f65134a489233c693b783671e91cbea5569f3b598705817f3c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:45:07 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 00:45:07 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:45:07 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.4.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 21 Oct 2026 00:45:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff2f21919163615e1e293e7a3c51067c79fdbb6f530ad232054a3a4e6b698dad`  
		Last Modified: Wed, 21 Oct 2026 00:45:20 GMT  
		Size: 88.5 MB (88510857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:8d8682b6d552cdc7323b27541d32fab7ac2147199dd5c3d4c42c3b4ff4c88681
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45d7e75b5dacaab3725562114abcd7f341e1dcb1bd0d2d836dac3e53bf2209e6`

```dockerfile
```

-	Layers:
	-	`sha256:e09d5848ed5ace53954b1caa04510fa66ff04022ed6fbd5cb5e64ee8ec7d49dc`  
		Last Modified: Wed, 21 Oct 2026 00:45:18 GMT  
		Size: 9.3 KB (9308 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-jre-headless` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:f36aeac3022bc0d0b06ecbc12503677767f483b1113120b944683b368caa164f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.3 MB (118311944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:964a09626d67a1198be92e7a96aa018da2865cd65bade97a86dc6bd9c85dee28`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:48:35 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 00:48:35 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:48:35 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.4.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 21 Oct 2026 00:48:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09c4c5379616caf668dc45f10fab068be91b6d5a7e3bbc36aa23820faf42e8c0`  
		Last Modified: Wed, 21 Oct 2026 00:48:49 GMT  
		Size: 88.1 MB (88111466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:6021f42cb59abd8960f5762411747d1505627d941ac75f1b3775f7e0300a5f92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68eb970c3cb37b7e2b3ebe1aefc225700ab78cb986db719cb8c7308500033182`

```dockerfile
```

-	Layers:
	-	`sha256:b52185d75dbd2e1422504312cbff41ea5d795f375a7f92c018b3f23c67815683`  
		Last Modified: Wed, 21 Oct 2026 00:48:47 GMT  
		Size: 9.4 KB (9411 bytes)  
		MIME: application/vnd.in-toto+json
