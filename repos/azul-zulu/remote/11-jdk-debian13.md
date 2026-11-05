## `azul-zulu:11-jdk-debian13`

```console
$ docker pull azul-zulu@sha256:707f1fa1fc3797b94ac12a01bcfefbb52fec89b7101530c0ac0ca3e5f3da261c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-jdk-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:71cacefd341fa5436309dd13207cee66dbc37268ccdc6ecbc32b6c2ca045c2c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.6 MB (177561806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab60b4106bce9ead3a775172a7544ea19e702097a2c0a0754996b67ec7ed035f`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:34:38 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 07:34:38 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:34:38 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.33-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 05 Nov 2026 07:34:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Thu, 05 Nov 2026 07:34:38 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a00e592f163eb9c5088762628c27716ee5887e893285f87594a54a5af5e23320`  
		Last Modified: Thu, 05 Nov 2026 07:34:52 GMT  
		Size: 147.7 MB (147705674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jdk-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:8eeffe6c4c0313b77acd03c9736f32e75a165cb7b0da680a640b3c60e0477363
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7c1c1eaca959f9f08ecdb8bb63f4e1a742bceb61a371356dc00563651050968`

```dockerfile
```

-	Layers:
	-	`sha256:aa2ef5db792c4a920e33ac8b9949b2e5e64bb27174a134a8c1ff3603b658c55c`  
		Last Modified: Thu, 05 Nov 2026 07:34:49 GMT  
		Size: 9.5 KB (9506 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-jdk-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:0fc2553349c3a6e9d79f4831b7a0645a0d0b013710c326a251aaebf886a3170f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.6 MB (177597638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54766ee30b007ecb0f00175f43718cc9b5370e624ca556d52ac0d744fa195d3e`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:38:02 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 07:38:02 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:38:02 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.33-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 05 Nov 2026 07:38:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Thu, 05 Nov 2026 07:38:02 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:797dc70ff958fafe1f4834897939a7a4f3b5e49d0a34ecd43de02fc12115f460`  
		Last Modified: Thu, 05 Nov 2026 07:38:18 GMT  
		Size: 147.4 MB (147383601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jdk-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:347ecee6d04937a487ec86aba3cefcb37bcb537ae7a33135dd55fe5f2482e4b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c140793e6232fe9188652206ea4a09663a85841c8b949c3015cf467bc3da8006`

```dockerfile
```

-	Layers:
	-	`sha256:213317f406ce3ca68dd1d93ba198eba8fc323c13fae3f96a82c10a42862a7455`  
		Last Modified: Thu, 05 Nov 2026 07:38:15 GMT  
		Size: 9.6 KB (9622 bytes)  
		MIME: application/vnd.in-toto+json
