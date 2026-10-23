## `azul-zulu:8-jre-headless`

```console
$ docker pull azul-zulu@sha256:b80d1a64ca5cce4ac3b0147aecb4987a61b818f53faa774667b21576f8d8c5ab
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-jre-headless` - linux; amd64

```console
$ docker pull azul-zulu@sha256:dbf957460081e03d61be2cf5ce7ed6c4884c3ece545fc53d7649313e54a4321a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.0 MB (77044302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d62751924c7170ae4b91215545f41c4e43659d1c9ad86e0f4004c556a758ff8`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Fri, 23 Oct 2026 19:59:48 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 19:59:48 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 19:59:48 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.512-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Fri, 23 Oct 2026 19:59:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:449bb914f8efecaeddaf57e4000a538bd3a46b2ed3ceb280055092175baabcd0`  
		Last Modified: Fri, 23 Oct 2026 19:59:57 GMT  
		Size: 47.2 MB (47200723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:73bfe89efd89f062ca7c4f4a31083c77f5695f0e6e5fe5e109e918f50480ac62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d30c890c023002256633806666e0297b8ae407cc3e62d991cda59195543093e`

```dockerfile
```

-	Layers:
	-	`sha256:c3c69271da75bad1fdcdd0cac149decbd91c4636d9c6d009fc0117f2ebbe23c7`  
		Last Modified: Fri, 23 Oct 2026 19:59:55 GMT  
		Size: 9.3 KB (9285 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-jre-headless` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:e06c884c816bfb5666ab3c3076326de691a10bab67526c2fbabbbca06e88b28f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.6 MB (77624238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c62dfdc2eced666ca50eee7e5e6cd771be9066407f6314f9544e6788bc086019`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Fri, 23 Oct 2026 19:59:51 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 19:59:51 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 19:59:51 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.512-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Fri, 23 Oct 2026 19:59:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b36664b0adcc78ad299baec02e6aa853e04acd9361873a99659098c82b53b45`  
		Last Modified: Fri, 23 Oct 2026 19:59:59 GMT  
		Size: 47.4 MB (47423760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:57c329d8e2a18b18b281c873e6b3b9952edc7f0db62cc269a2ad3628a843b8dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:690a0e941e862b2d29d9d864734184bc2f87d7a4e1faf18dbbd737e5d13a7bc4`

```dockerfile
```

-	Layers:
	-	`sha256:de906dc56d1b7c03e563426443d38be480c01cb9525df21ef03e68f0e30d058e`  
		Last Modified: Fri, 23 Oct 2026 19:59:58 GMT  
		Size: 9.4 KB (9389 bytes)  
		MIME: application/vnd.in-toto+json
