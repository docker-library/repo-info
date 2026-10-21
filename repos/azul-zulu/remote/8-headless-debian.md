## `azul-zulu:8-headless-debian`

```console
$ docker pull azul-zulu@sha256:d41f7c52e85264f8a65950772e52e09860a45066e447ceabe619b10d0914e2b9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-headless-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:82badf50999a740ca87e718f32d6d831eac097f29184891740ce65e9bc00bd5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.4 MB (88441499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70c82e2db4a2fd4007b8001ad775086b39e428605dcb79db8614c32052492838`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:41:47 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 00:41:47 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:41:47 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.504-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 21 Oct 2026 00:41:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7febe283e8598836233c3871dcb0b3ebdd34e4604fb505c19b78241faa64f6ad`  
		Last Modified: Wed, 21 Oct 2026 00:41:57 GMT  
		Size: 58.6 MB (58597920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:b7290a72b62eecdcb0638826ae052eea9c871edad8d4a80f67d79db9c84d051b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcd23b43b0d53b2d43a230816b5a5c99de053e5fbbb4313e7b8bf9937aec87d0`

```dockerfile
```

-	Layers:
	-	`sha256:e0f0a478c22d0bfc5a32d90303145a71a06f3c51964249e3c69698f59fa74dec`  
		Last Modified: Wed, 21 Oct 2026 00:41:55 GMT  
		Size: 9.3 KB (9260 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-headless-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:5922ebeafd0f930916ece07d6315dfac0d7f8a58d346db1bbcaaa93d46e9a6ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.1 MB (89126714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfeead1f36fc771bbc8a64997f58af8254f1daa66677c8e265108c410561ae52`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:45:00 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 00:45:00 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:45:00 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.504-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 21 Oct 2026 00:45:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90eacb0ff47626bc4151ce3f8c63f4cb40f53ee8db40109abf9686fd9d5edeb1`  
		Last Modified: Wed, 21 Oct 2026 00:45:10 GMT  
		Size: 58.9 MB (58926236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:6a85b2ae908ec32d3835eb5ed0ff8bb5b05114396b1c9ad30e432c33ef82163d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfc691447804f6f7c5bda471368725f208d6a920943a1f9d9991597ff2e3531e`

```dockerfile
```

-	Layers:
	-	`sha256:7a5bc3223168778fd7408b9b9d223e78c7d7d845384273df8d91081827a271bb`  
		Last Modified: Wed, 21 Oct 2026 00:45:08 GMT  
		Size: 9.4 KB (9364 bytes)  
		MIME: application/vnd.in-toto+json
