## `azul-zulu:8-headless`

```console
$ docker pull azul-zulu@sha256:a747ee414b46c53fa590e3c32e2c5629256f193bbe2797deda3d54b955562feb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-headless` - linux; amd64

```console
$ docker pull azul-zulu@sha256:2ad0321007eec2fe11b23f32829f259672e6c534c567e2e9e2e391ce923be507
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.5 MB (88474600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc1494030df92f96db3ef9da55fd1606bbe18b474555af3a24ae4c26c15f2306`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Mon, 09 Nov 2026 20:20:37 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 09 Nov 2026 20:20:37 GMT
ENV LANG=C.UTF-8
# Mon, 09 Nov 2026 20:20:37 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.512-5\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Mon, 09 Nov 2026 20:20:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4aceaf379af832565ff25f0ef76380edeabc311d673c9ea32f64155645fac636`  
		Last Modified: Mon, 09 Nov 2026 20:20:46 GMT  
		Size: 58.6 MB (58618468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:820be99be0588127c26ad3009909253108aa206634ea17d23a5c19d4d7a135ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5dba23dd5bd26fff19cebc384f1eef648f40345cf1268f6fee9c3efdf398d97`

```dockerfile
```

-	Layers:
	-	`sha256:f2d8c1d4cf8a4c34577f45d7353805e4dd706a9423139b2f194f45b9fe4720a2`  
		Last Modified: Mon, 09 Nov 2026 20:20:45 GMT  
		Size: 9.3 KB (9261 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-headless` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:267a58010dff54ea0d2da021912a487b7fd7905875c0a7ac9d82b67fb5a5a43e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.2 MB (89160169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:294da6ac5a7fb12154dfb98f67010406262832e0768a4b0bc1d5c60adf56d50e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Mon, 09 Nov 2026 20:22:03 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 09 Nov 2026 20:22:03 GMT
ENV LANG=C.UTF-8
# Mon, 09 Nov 2026 20:22:03 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.512-5\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Mon, 09 Nov 2026 20:22:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edd69e2c45bccc1cff72168809b8d9bf386f0fff71c0a834f6efafc36977b229`  
		Last Modified: Mon, 09 Nov 2026 20:22:13 GMT  
		Size: 58.9 MB (58946132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:b2536f0421fb4bb0499bf64582a3f90ec8b9bdd3b76d90719df732cee1a89cc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:496516fe32c62e69b52464aedadfb4095160b8ab45c862fcbf434168c4527368`

```dockerfile
```

-	Layers:
	-	`sha256:b4c66a4f61745af99a91baa38840bc63cd5fa318896849ebbe082b659168989a`  
		Last Modified: Mon, 09 Nov 2026 20:22:12 GMT  
		Size: 9.4 KB (9365 bytes)  
		MIME: application/vnd.in-toto+json
