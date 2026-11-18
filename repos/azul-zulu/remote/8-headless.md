## `azul-zulu:8-headless`

```console
$ docker pull azul-zulu@sha256:2d219937f2666abb7d878139eb80b877e37c141ff9d1e34ea74418202997519b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-headless` - linux; amd64

```console
$ docker pull azul-zulu@sha256:fdb2e135133835446168334909cf9509f496759137e970b023f03ecdcc477493
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.5 MB (88509974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:daccbfe272ad754f3616538b940db767571969b704f1edb7031f775c4c5f1b5b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Wed, 18 Nov 2026 02:41:25 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:41:25 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:41:25 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.514-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 18 Nov 2026 02:41:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbd4a5155dae0651dc12b009984b52d3e6214ef3c850df89f22ee7d767c73d79`  
		Last Modified: Wed, 18 Nov 2026 02:41:34 GMT  
		Size: 58.7 MB (58653842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:04c861475c55d3c80ca6a31a81bbc9b5405ffefd0e173ebb975a729d9ee4a939
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66adda6061f2c340cf45adebebe1c3f78e16efa576bcd1927152172ca2482d83`

```dockerfile
```

-	Layers:
	-	`sha256:5d3d9cc7fd46ae6d5f56c16bb658107141af427572dcbd4cd0288eb805955c72`  
		Last Modified: Wed, 18 Nov 2026 02:41:32 GMT  
		Size: 9.3 KB (9259 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-headless` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:ba211eef04adc9b28f2b09d7cdb421dcbd6c1dc5b44afbe86ea595e74a6314f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.2 MB (89184061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abed87474d02661b3e4a39bddac322688128d3c622893340d7cac7d952984918`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Wed, 18 Nov 2026 02:41:03 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:41:03 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:41:03 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.514-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 18 Nov 2026 02:41:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59c0e30de8f0fe4ef3431403a9243ad8a8505cac3df2e861ba53173e460e4cd2`  
		Last Modified: Wed, 18 Nov 2026 02:41:13 GMT  
		Size: 59.0 MB (58970024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:e13b9ff61d4c8e76c5c2ab6e9753ae99134769455ed309b5fa6217c267f7ad46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20042349cd69cbf0f192923472f0fed0dfc67942e5c3b4e61c0b1b79c503e3a6`

```dockerfile
```

-	Layers:
	-	`sha256:1acc2b8d80f0a0a60d398de4f131a0f064ae8822339fb85049099c6043f6783e`  
		Last Modified: Wed, 18 Nov 2026 02:41:11 GMT  
		Size: 9.4 KB (9365 bytes)  
		MIME: application/vnd.in-toto+json
