## `azul-zulu:17-jre-headless-debian13`

```console
$ docker pull azul-zulu@sha256:d2870dac4b1f650144c9ee639c0cc6a6df3d90cd6710663195f14b83af58b62a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-jre-headless-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:50484a377abfa72cce91cb2007cf4f0142acb5788aef5c8e4fd150798396056a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.0 MB (99045731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdd00d4dd51816cbb2204e49689787fd6b86b426bc68f1d4a4c123443dc784ec`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Fri, 23 Oct 2026 20:01:42 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:01:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:01:42 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.21-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Fri, 23 Oct 2026 20:01:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7d2586f86937fd44c97d753eb100d5056c0c71404eeb9e16e345959931736f6`  
		Last Modified: Fri, 23 Oct 2026 20:01:54 GMT  
		Size: 69.2 MB (69202152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:e31f1d7fda290437c3b3680814c808b860ecaf95d642687aea59593f85704411
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c8dae2a2b6754346b9c7f14acf97c0e2702f02148e8e9af8d4d7eab8fc2a3a2`

```dockerfile
```

-	Layers:
	-	`sha256:e6dc277f6f939b46082d06a1388e31d630ca54c42d99cc56922fb42d9249cb40`  
		Last Modified: Fri, 23 Oct 2026 20:01:52 GMT  
		Size: 9.3 KB (9300 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-jre-headless-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:8d73703d93b206024205813b3ab5d84e65766c6121c7f427a5ebda5c84cdb42b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.5 MB (99460501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69caa93943b43a48410abb251e52a25991308e87637e2d462dfff14e4693b17e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Fri, 23 Oct 2026 20:03:36 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:03:36 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:03:36 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.21-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Fri, 23 Oct 2026 20:03:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acaa465c9977498691d6b7a37648f72efde464bdfd7a9bdf0070a7c2778f7d0f`  
		Last Modified: Fri, 23 Oct 2026 20:03:49 GMT  
		Size: 69.3 MB (69260023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:afca670af5b5c5cca578fb5c61033198222ff901f0216a1002ea43785cf97294
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c10971cf32f3226ca9eb133291df95bb7079c6e2e46ad7273647949f28a8d841`

```dockerfile
```

-	Layers:
	-	`sha256:a040d851d051f00c88228d41d3d26833681846d8c7ea60050c1c45cf57e79e44`  
		Last Modified: Fri, 23 Oct 2026 20:03:45 GMT  
		Size: 9.4 KB (9404 bytes)  
		MIME: application/vnd.in-toto+json
