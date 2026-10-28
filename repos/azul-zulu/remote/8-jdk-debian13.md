## `azul-zulu:8-jdk-debian13`

```console
$ docker pull azul-zulu@sha256:ca98003c641a281bf17e9d436b2e91c65c7280bcfc1d01e41685c2d061a172d4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-jdk-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:0e0c0c1fe0c1ef5c0d0318d3c5468411c00855e9a0e9d0c377a01a4c39b3c2d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.4 MB (91379385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc06b2fa46a39c295146de69ca6a2e0ccadbd59176a5d8ae1d0eea619e1e1207`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:34:24 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 28 Oct 2026 01:34:24 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 01:34:24 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.512-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 28 Oct 2026 01:34:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b461c9939cf3d89d00c9c7168067c2c7717fc749fe76e620d24138e08fa0719c`  
		Last Modified: Wed, 28 Oct 2026 01:34:33 GMT  
		Size: 61.5 MB (61524149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jdk-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:9067074dfde2411983f55a7eafa6642fe6649e436a16ae2fb5da064bc75b858b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8aa3731c71b78ec6b43e8518615f8fa87f5790bdb200eb685b51874863774359`

```dockerfile
```

-	Layers:
	-	`sha256:6fd2bc67304fc7871ac3c04b53f841efb23979c8bed632c75e3968c8c95c7472`  
		Last Modified: Wed, 28 Oct 2026 01:34:31 GMT  
		Size: 9.5 KB (9468 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-jdk-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:c9bec087e50f8bceb3ef8c1b43d76d222e264d6848b7c221314f7a105a4f9573
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.1 MB (92064558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e7c5b239813d2b196f06ecc6ceef99470953d0bfd29d7c0d85c99dd10b876f0`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:38:20 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 28 Oct 2026 01:38:20 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 01:38:20 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.512-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 28 Oct 2026 01:38:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0349593424428a121ab87d7b2879625cb2791a42a2a0ade1d824fa624723faa`  
		Last Modified: Wed, 28 Oct 2026 01:38:29 GMT  
		Size: 61.9 MB (61851062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jdk-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:34b27e47f8adfaaf9f8ae70339887424d0c4b84eb7f53ecdc44a5fe544ea030e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f8088d6f70f9ee27a6ce4a2e9c06a7e6683124d44ab0859d860e7805195f5e0`

```dockerfile
```

-	Layers:
	-	`sha256:525efcb33d5eb85423aedf9081676987c8f77fe3ab01e2a715ebbef9c2fc6037`  
		Last Modified: Wed, 28 Oct 2026 01:38:27 GMT  
		Size: 9.6 KB (9584 bytes)  
		MIME: application/vnd.in-toto+json
