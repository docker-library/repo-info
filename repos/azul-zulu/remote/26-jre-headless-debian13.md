## `azul-zulu:26-jre-headless-debian13`

```console
$ docker pull azul-zulu@sha256:d6d8df98cdda8d6c3444112424f27068e71b84c773c388cf1cfdceab9492a155
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:26-jre-headless-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:f89b4a7ea39f2aec4a4ef87c7137d52c94fed1f51e5e8f2a26191038da3f3bd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.0 MB (119998372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f27bccbc446e9e0290d0638bd4bc2533a8be845cce1511f9aef1dab7adb4073`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:44:18 GMT
ARG REPO_HOST=repos.azul.com
# Sat, 19 Sep 2026 00:44:18 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:44:18 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu26-*\nPin: version 26.0.2.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu26-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Sat, 19 Sep 2026 00:44:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7337006a7800986d156c108df169f74dcdefff7a0a7b770dc943c77b08c8cef4`  
		Last Modified: Sat, 19 Sep 2026 00:44:31 GMT  
		Size: 90.2 MB (90167954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:599107828f404a94f890ac0e9cc60474c2a35859e50f79abf7f04183b47ab767
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d66d1a91c712a012f7aeb8c921d38724d7ca320d574714d59c4aca9d8752c8d5`

```dockerfile
```

-	Layers:
	-	`sha256:54b6f98a645846d30d20227bfc2dcc9e974fedbcef32483d0651bd329e46ee83`  
		Last Modified: Sat, 19 Sep 2026 00:44:28 GMT  
		Size: 9.3 KB (9308 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:26-jre-headless-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:b69e29ad613a5f6d9d76b7ebb79120f3f5bfa63af090ce453ff899c5764e555c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.3 MB (120289880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:085a8e540a7bc6f2d29ef13aa0ee0a0f9cb0172c32637af023d81f8e159c668e`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:46:48 GMT
ARG REPO_HOST=repos.azul.com
# Sat, 19 Sep 2026 00:46:48 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:46:48 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu26-*\nPin: version 26.0.2.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu26-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Sat, 19 Sep 2026 00:46:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29c8da3bcf81d1cb1172cf6803baab4cbe1dbe021218b2851ecaa497357efc2c`  
		Last Modified: Sat, 19 Sep 2026 00:47:02 GMT  
		Size: 90.1 MB (90100189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:2814ffff2ab89d9349bf78508f35779b70ea313579c68d2de9367f0c4b0e1d82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59ad68303a2e1ed67bc6342de8b9cee02eadd6110595203449d332e3e00985be`

```dockerfile
```

-	Layers:
	-	`sha256:5e8ff3ecc8aa94af408b564b3568db4aa2f9dd31599e54a3e682b61c786b40c1`  
		Last Modified: Sat, 19 Sep 2026 00:46:59 GMT  
		Size: 9.4 KB (9412 bytes)  
		MIME: application/vnd.in-toto+json
