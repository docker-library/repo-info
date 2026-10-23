## `azul-zulu:21-jre-headless`

```console
$ docker pull azul-zulu@sha256:89af19e86eb79bedc9dc66db54e39edf6f131f19ac72f9badfd40d5ca6600273
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-jre-headless` - linux; amd64

```console
$ docker pull azul-zulu@sha256:8407af92f19e7146038e69f58673659f3bd03a702274177869acf5dc895701c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.4 MB (104361372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8126c8f4a467a2d37543b0fb0d941da853e74a7d1c0afe8b6bd73944453b18c6`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Fri, 23 Oct 2026 20:02:21 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:02:21 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:02:21 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.13-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Fri, 23 Oct 2026 20:02:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7104c7af8c1c57a4aadf6b08de85a1f7023b84a9e72a57b1ee494fe544c24714`  
		Last Modified: Fri, 23 Oct 2026 20:02:33 GMT  
		Size: 74.5 MB (74517793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:30500889681334f954709c5c58c1437b7da06e68390d816791623dc597818cd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0cc3bc5044f4e51d65218685642f39fe43331927dd15c58ce8ecb4228851700`

```dockerfile
```

-	Layers:
	-	`sha256:27e68ade4ec2ec1fc02df16494fe6b098ecb14942efc5ce3485786586e54e58c`  
		Last Modified: Fri, 23 Oct 2026 20:02:31 GMT  
		Size: 9.3 KB (9301 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-jre-headless` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:a0038d3cd02009f3bc39918892299de02a71abf601739e8ec109d07c371dafc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.4 MB (104377926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adabb56369a516968ec4f19870280333e334b33ce0a811d925a3249dfa7bea6b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Fri, 23 Oct 2026 20:04:18 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:04:18 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:04:18 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.13-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Fri, 23 Oct 2026 20:04:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eb92f1f5d80683cf95775dac170ecf6a981846613f37abe85718db817c92bd8`  
		Last Modified: Fri, 23 Oct 2026 20:04:31 GMT  
		Size: 74.2 MB (74177448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:a319bfc036b7bd8b4047eeb1ada161932c056988ed0aaadf41abaf45e5b60e3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:992c77aef0ab53f36861cda3e6bea702759eb3cb96c340e0b2a1060b8e1b02dc`

```dockerfile
```

-	Layers:
	-	`sha256:b50fc35bd811b126358762c1084c2b9e4b9a044cca368cae1bcb71a62ec566b7`  
		Last Modified: Fri, 23 Oct 2026 20:04:29 GMT  
		Size: 9.4 KB (9405 bytes)  
		MIME: application/vnd.in-toto+json
