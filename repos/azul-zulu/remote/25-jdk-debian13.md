## `azul-zulu:25-jdk-debian13`

```console
$ docker pull azul-zulu@sha256:c8f6996df889a382bd24cd3e532c5f63716f3768f78ac5bd913ba38f0f29856e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-jdk-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:2114510c8cf82ce611c0ca85938921fe54bfff2a8b37f8abf75ad61cc9c73e84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.1 MB (214066400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f307f545dd0285ee9c6931cd64ffd288655cf0931a007bee126d90af7ce06cf6`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:36:49 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 07:36:49 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:36:49 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.5.0.3-5\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 05 Nov 2026 07:36:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Thu, 05 Nov 2026 07:36:49 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe7151e53a81458951df75115af50495f5ea2fd916ac442e009ef3f814aabee3`  
		Last Modified: Thu, 05 Nov 2026 07:37:07 GMT  
		Size: 184.2 MB (184210268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jdk-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:97fa94e8945d8cf63b3252c414817559597bc719cd34ae64a5b04fe9b751df7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ec7c23e86938e8d8769c282458e16b84409e2ec07690eb416553e5c352a78ac`

```dockerfile
```

-	Layers:
	-	`sha256:7f92576ee435b25353672750766044ee82e26b8cea757dc2c18cb35c46eb3b3e`  
		Last Modified: Thu, 05 Nov 2026 07:37:03 GMT  
		Size: 9.5 KB (9520 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-jdk-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:da183d8cce04fcf82e3af8a885034b7a411ba26e7cf927b6fe9e66056f540f3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.5 MB (213548385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72932fe314eed12154cb056c380826603d9a814b0be445bf6b166bbfe9279b57`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:40:39 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 07:40:39 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:40:39 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.5.0.3-5\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 05 Nov 2026 07:40:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Thu, 05 Nov 2026 07:40:39 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5e3cf714ebc47ba042001741d959463c216a3b3d8ed1255bbefa1c063c32c69`  
		Last Modified: Thu, 05 Nov 2026 07:40:58 GMT  
		Size: 183.3 MB (183334348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jdk-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:ed57b4d8be91b84db78309781c08d3109db449176e285b00a0fdd3b629e6f191
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b43dd8338daa009339ef0e463f4dac536ff9f85088265b3d15259934af414654`

```dockerfile
```

-	Layers:
	-	`sha256:9c4df13ed4f62817226cbbbe203b0fc401c45af26c56586f19e9ebeade4806f4`  
		Last Modified: Thu, 05 Nov 2026 07:40:54 GMT  
		Size: 9.6 KB (9636 bytes)  
		MIME: application/vnd.in-toto+json
