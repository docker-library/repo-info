## `azul-zulu:25-jre-debian`

```console
$ docker pull azul-zulu@sha256:aad8ae4cec64ce5f26e36bb805f56d7fcb955f03aad3776c5927025627a89a8f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-jre-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:73710ba2abc1c904deddc359f5d5869b3ac49c141e017c49a8841cddfee8642b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.4 MB (120414737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69cdc61e4601ec7411961fdfbd8dfac29210ceded942002cacdff1a6a69c0f32`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:44:55 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 00:44:55 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:44:55 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.4.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 21 Oct 2026 00:44:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a197c53e66754d8c764be8bb6a538510352d1d860a3e19aae6a6d864b878068`  
		Last Modified: Wed, 21 Oct 2026 00:45:09 GMT  
		Size: 90.6 MB (90571158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:254252fdc4920949dcc6d85b0aee6c4fdf17cfd416d872a076434e3dae646684
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfe47af21e634d7d1d86747525ac42e2d1221972413ac15b957414d64d9b4d7f`

```dockerfile
```

-	Layers:
	-	`sha256:1206e60c63489dfe206303a0f907831e37d03bb7f3e731343647963c5973eace`  
		Last Modified: Wed, 21 Oct 2026 00:45:06 GMT  
		Size: 9.2 KB (9196 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-jre-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:75d979c350dea5466c9c8b5578845d7b999d64684f1ca9e88feaf368ba0ffc68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.4 MB (120362926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e61c0a155334f53e5a07b410706b14689ad091763e93099be48bad6360e85356`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:48:27 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 00:48:27 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:48:27 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.4.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 21 Oct 2026 00:48:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4594920cb693ef17e9541652fdc520c33b72c608fb66884d9ad639cff236dc9f`  
		Last Modified: Wed, 21 Oct 2026 00:48:42 GMT  
		Size: 90.2 MB (90162448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:d90b634e4c999b2efa439f21ab447aafd9fb793614f69436edf3e5008cc7fe23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7d530b04124f640d8b3dcbb90a27df7f3b18752a8849264e1fb00c9ed69f78a`

```dockerfile
```

-	Layers:
	-	`sha256:450e116f87adc39df6fde0dbed8c0668907b6d78e371c57659e125896fb1ab33`  
		Last Modified: Wed, 21 Oct 2026 00:48:39 GMT  
		Size: 9.3 KB (9301 bytes)  
		MIME: application/vnd.in-toto+json
