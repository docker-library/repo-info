## `azul-zulu:11-headless`

```console
$ docker pull azul-zulu@sha256:2fdc045feb6b6df8e67a1f0665da6bc55fc22fb667c46ead8ccfe358453e6afb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-headless` - linux; amd64

```console
$ docker pull azul-zulu@sha256:5e8a2eda1db945140f3f9aa0369d7b8003033feccceb906c15ad0ed7565c386d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.0 MB (174996487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34c6d6e0c0f3dd108303e9050eabe3955c8447d6e3e2ca30d5bd116de9e28273`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:47:44 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 25 Aug 2026 00:47:44 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:47:44 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.32.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 25 Aug 2026 00:47:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Tue, 25 Aug 2026 00:47:44 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c193596831da6e84c5d5b335d6557cecc8ef407f85294a72f80d53f931462a7d`  
		Last Modified: Tue, 25 Aug 2026 00:47:58 GMT  
		Size: 145.2 MB (145203829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:7c8eaa0a4c697d8c7c941efd948c0914d7231bb107e7d35aeda3e0b18c2e8aea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49ef5d4267f319578bebc28f84cf1c57456c6ada0a3575762aca051fd2273afb`

```dockerfile
```

-	Layers:
	-	`sha256:0fb4a219c78f608a285f11c01fcef80d62602ce75cc73216134bd21e3b9864d4`  
		Last Modified: Tue, 25 Aug 2026 00:47:55 GMT  
		Size: 9.3 KB (9307 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-headless` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:f382ac72fd866117767affa0b2bd93be30ce46a5b58a085429da09b507d4c179
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.1 MB (175057876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b33c1b0ccca97c6fa9c3324d46cae60c9b8b829bd793673c7a51e4da9e79c444`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:49:32 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 25 Aug 2026 00:49:32 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:49:32 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.32.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 25 Aug 2026 00:49:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Tue, 25 Aug 2026 00:49:32 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8cf8923fed95b7f1de16018a6c8ac5074a4083398787ae3e0e76e2a30d1cf27`  
		Last Modified: Tue, 25 Aug 2026 00:49:47 GMT  
		Size: 144.9 MB (144898294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:3c612809a2aef78a8bb8dcb0e3d203aafb5b9ad4dfa1171e281c9da3379dc9b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30e4c70151f004134281c76b3b35451be3805c3b9f192c5f12697b7bf7861ba8`

```dockerfile
```

-	Layers:
	-	`sha256:bcbb4ce7581d4a798d6fd58b47975b7565041ad419a60d0038d4aea8bf8238e8`  
		Last Modified: Tue, 25 Aug 2026 00:49:44 GMT  
		Size: 9.4 KB (9411 bytes)  
		MIME: application/vnd.in-toto+json
