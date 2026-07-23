## `azul-zulu:25-jre-headless-debian`

```console
$ docker pull azul-zulu@sha256:dcc1a4ff70c961256d83df56dfb5b00ab655383eb9ce51c4c8ab5d93f6d32604
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-jre-headless-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:ba7861ec4bb5150b9b2c572ee5bd687e549fdda4064f4c06cb067f8ff4586956
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.3 MB (118281432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f909a0f780813baa9fccdf6b3c168e220619f8a2a33427cfa69080a1b992f145`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Thu, 23 Jul 2026 22:30:54 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:30:54 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:30:54 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.4-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 23 Jul 2026 22:30:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5ccfd017f6f7d59274bf30e7acdaedb9d1d502bc205d7268afdcca4940b204d`  
		Last Modified: Thu, 23 Jul 2026 22:31:07 GMT  
		Size: 88.5 MB (88500527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:e61e5c4cb61b4aca4e803688b7d718cd52ddd133f706144bd35955d19cf1bbbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31a669fb3613efaca5880f7a8e2e882834157ffc98f29c392d61d53e3ab13e6e`

```dockerfile
```

-	Layers:
	-	`sha256:b06bfb4ae0825954040988a53084bc2b41fedd979d903d3fb102eb23ae1f356d`  
		Last Modified: Thu, 23 Jul 2026 22:31:05 GMT  
		Size: 9.3 KB (9296 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-jre-headless-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:41a03193a92cbb0844642eb660dee656a6b6c222fcb466307093e8af8a9cf582
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.2 MB (118246569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5caaeee37c1890e9b8e96a2aa4a14f7d317d5de560a37b54ca88780682c4f9a8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Thu, 23 Jul 2026 22:32:02 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:32:02 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:32:02 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.4-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 23 Jul 2026 22:32:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ba42be52151f099f7c9bcc2a91d8110518789b2f0df244db6982e5de3dc3ab4`  
		Last Modified: Thu, 23 Jul 2026 22:32:16 GMT  
		Size: 88.1 MB (88102864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:c007ec1f9340fa41fae833e5a2e42118f73e2eecf1ec7572c45d9b4986e5e19a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c3735043eeb91e05e21c837489266dfcb111cb6795e3514e3c34b69de919b22`

```dockerfile
```

-	Layers:
	-	`sha256:4a5c06bbb1b635a4333f300932ce557bb3d2d8cfd28d522416b9a2bcf1e45c5e`  
		Last Modified: Thu, 23 Jul 2026 22:32:14 GMT  
		Size: 9.4 KB (9402 bytes)  
		MIME: application/vnd.in-toto+json
