## `azul-zulu:8-jre-debian`

```console
$ docker pull azul-zulu@sha256:ac1c84edc8b94939d2d6bf108a442ccaa88f3d827bda6bde95ad005cc54ef697
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-jre-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:b64b958dcab805008d16c790d37f6571a19a598279ee8bba3abf968058c752ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.1 MB (79130220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83236bbc91a052e79b6ba9256918b041faee3a5ce4fcac594c2408c4120c263e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:41:50 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 00:41:50 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:41:50 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.504-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 21 Oct 2026 00:41:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7406ad77a906e49b9fef5b3e94e85f2adaf7ebe0223f41dbef74aab15a176a0d`  
		Last Modified: Wed, 21 Oct 2026 00:41:59 GMT  
		Size: 49.3 MB (49286641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:f8409741e9434f8bf5582316a389f81da2f1333f1480a7b39c27a663a8253ca1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a91187f006e496c4a95cd84204be8aa5e4e7717c24fd67980d025d7f14ec826`

```dockerfile
```

-	Layers:
	-	`sha256:de9bf63984d4af0b8b47dc27496f90d5a6d95a57b8f14185080bcff24e4d071c`  
		Last Modified: Wed, 21 Oct 2026 00:41:57 GMT  
		Size: 9.2 KB (9174 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-jre-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:e48fa40e06f3f031a8cf765bef68a464cf90828688ba6ee12eb06446f9d8b9bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.7 MB (79718539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cec2871c6e3e08b1562ebbf5e62655e2ef79e2864393e0773bed018b281a4ade`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:45:01 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 00:45:01 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:45:01 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.504-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 21 Oct 2026 00:45:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b35a61f9f634b9471f729666e6f8f94cf002781ace726e1b932700b6cf0fe81a`  
		Last Modified: Wed, 21 Oct 2026 00:45:10 GMT  
		Size: 49.5 MB (49518061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:d922aefe3a735ecc85fe800a12c3b59018fc1605a5a8f39327814f87cdc0b6c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ca3d148f17963cf1b7bdc7b23b2262328d6987036292adf01ea84a385b72608`

```dockerfile
```

-	Layers:
	-	`sha256:e66dfc4ce6c3b922404b76adbb6606631004f6f6b7bba1bd68391d3e4d4015f3`  
		Last Modified: Wed, 21 Oct 2026 00:45:09 GMT  
		Size: 9.3 KB (9278 bytes)  
		MIME: application/vnd.in-toto+json
