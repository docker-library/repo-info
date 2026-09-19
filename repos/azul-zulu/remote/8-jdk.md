## `azul-zulu:8-jdk`

```console
$ docker pull azul-zulu@sha256:54623129c4281cc52763254ffefef9aacba0b9b30197e82bd2cfd75ee9d8e456
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-jdk` - linux; amd64

```console
$ docker pull azul-zulu@sha256:4163b693f242d9127df0d47dfbe23507527158f4be57e45cde2bf67a179ef74a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.3 MB (91327894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bf04d50555b5564953b155b71081205255514f7c629a1760c807cbdfb30a0dd`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:40:14 GMT
ARG REPO_HOST=repos.azul.com
# Sat, 19 Sep 2026 00:40:14 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:40:14 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.504-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Sat, 19 Sep 2026 00:40:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbe4122113516881dadf14b5fff643d3cbe6b6ba356a8559c9a721f562601779`  
		Last Modified: Sat, 19 Sep 2026 00:40:23 GMT  
		Size: 61.5 MB (61497476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jdk` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:bf58169a2c40ceff9a699477c66cfdac6fc83fc3de680e9c7f896dc25ad8c834
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3ea461024852228ac62a55e16035b77bbeb9469a1f17c040a63267d1bd8aa59`

```dockerfile
```

-	Layers:
	-	`sha256:586e279fc1bda037ae817270fc20e06e29d5b584dcd6101500791c72c18a52b4`  
		Last Modified: Sat, 19 Sep 2026 00:40:22 GMT  
		Size: 9.5 KB (9467 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-jdk` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:1580e5e1ba4db8f634c2a645060cf931dd2a6fae33450729aea4e3be0cb82a5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.0 MB (92005348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:984d048e4e7c8e4be6452586a0837afb84cbe0f243162374e98bb8832c122fa3`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:43:10 GMT
ARG REPO_HOST=repos.azul.com
# Sat, 19 Sep 2026 00:43:10 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:43:10 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.504-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Sat, 19 Sep 2026 00:43:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79c6359982ae93b538849645ec30cd0d9a52abc56e9f0c6d450db9253913b7d7`  
		Last Modified: Sat, 19 Sep 2026 00:43:20 GMT  
		Size: 61.8 MB (61815657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jdk` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:e9ef50999f83739e223e8e47ef6151ba827343cb6b37cc736066ac880ff0f114
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e32892a5cb241415bd66c3090eceb2819544bcd09a379d1df2a62c8f58282d4`

```dockerfile
```

-	Layers:
	-	`sha256:9c5b061b741c2d8aed7989e12156e0478999e3fbcf93f516147dcc02c0a08f64`  
		Last Modified: Sat, 19 Sep 2026 00:43:18 GMT  
		Size: 9.6 KB (9584 bytes)  
		MIME: application/vnd.in-toto+json
