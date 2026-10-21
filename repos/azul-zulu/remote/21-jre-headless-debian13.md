## `azul-zulu:21-jre-headless-debian13`

```console
$ docker pull azul-zulu@sha256:f098082db8ef350c682ab6ff66aa3e969c16d0317f462735e6ea6f32552e518c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-jre-headless-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:c5be6013592d7dc555ce3e19286ccf8e0f48291ec4082edeb649dba730b4bdf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.2 MB (104196175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2872a742dd800655cf4d3073508f3e8f0e57890f8e450bf722fe892ba8a06adc`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:44:30 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 00:44:30 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:44:30 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.12.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 21 Oct 2026 00:44:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e80101e4b6a38b144c334fb33c669f42410b690d31c9ac9656984055f70fad03`  
		Last Modified: Wed, 21 Oct 2026 00:44:42 GMT  
		Size: 74.4 MB (74352596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:eecb59587732ba1576cff179fbf1e4dd16c20be09d8303a7b68e1c9be1ffb399
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0807521e1377826f53c99390ce24a2ae77785e2e65aab9f687d18d4e4e38274`

```dockerfile
```

-	Layers:
	-	`sha256:d83652541a7806a698de3453eaaaff887f0b867986bc14665cd3ee6068f832f7`  
		Last Modified: Wed, 21 Oct 2026 00:44:40 GMT  
		Size: 9.3 KB (9311 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-jre-headless-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:7f0da01200ca83abf6911a59800086645533c28c916a4302e0c121f6abde4478
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.2 MB (104214503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d68abd852e52d6dc444ade44c116e50323130e94dec49fefba562f70e3dc0371`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:48:03 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 00:48:03 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:48:03 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.12.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 21 Oct 2026 00:48:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a10f95cd92d87189210886d5dd5f0773b38bceabdbb5d2193e6a6c8e5160900f`  
		Last Modified: Wed, 21 Oct 2026 00:48:16 GMT  
		Size: 74.0 MB (74014025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:4eaa7deba4c83e6ba4cd7f6d9cec03563fe7f3217133e083886ebf0d406e1e71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f654aa3ad26b57d879f7cf648c065e420979dbb336608a37558b851278e88d3d`

```dockerfile
```

-	Layers:
	-	`sha256:b9ca4e7d83428a5cb6fd2ebfc009752d7936cc7fb5e8cd273885f66aade23465`  
		Last Modified: Wed, 21 Oct 2026 00:48:13 GMT  
		Size: 9.4 KB (9415 bytes)  
		MIME: application/vnd.in-toto+json
