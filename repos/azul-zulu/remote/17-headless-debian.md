## `azul-zulu:17-headless-debian`

```console
$ docker pull azul-zulu@sha256:ef0214669a8390fd80713fa72aa3a570782fe0c01b3298b3612750b107cc72fb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-headless-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:69e555e6ffc8b3b921529207c375c11bd2b67a0a682c0c0eefdb781c865c5e13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.6 MB (179595595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a73d1bfcad010ca052ac96d61604bbcac55e1efa1f23a0cfbfc71de6bcd0f3f4`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:35:19 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 07:35:19 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:35:19 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.21.0.3-5\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 05 Nov 2026 07:35:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Thu, 05 Nov 2026 07:35:19 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30a6e32af25b95ff4671686cf11fe455a92f4005d5ce2b76c89aa5a78bd60e6d`  
		Last Modified: Thu, 05 Nov 2026 07:35:34 GMT  
		Size: 149.7 MB (149739463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:23df01c2fb036abab600f115f37519f92638ea8d8076b388b5c8d01717bb1e56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:facc7d2f326c02cf9685e70b4306ead382ac4fead838d96f0cb408e9e4b37929`

```dockerfile
```

-	Layers:
	-	`sha256:5f6f125007e02248b46094429457744e0120ed9601a28015af57315398d71236`  
		Last Modified: Thu, 05 Nov 2026 07:35:30 GMT  
		Size: 9.3 KB (9314 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-headless-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:9a59e85892af5a77edebd3082016870f0217f8419f7f3193363bcfaf9d768963
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.0 MB (180026013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:969c8f5093fe76640aced9545cc3eddd2108a8349e8177364793576936ad261a`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:39:01 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 07:39:01 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:39:01 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.21.0.3-5\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 05 Nov 2026 07:39:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Thu, 05 Nov 2026 07:39:01 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2ed0b0f850477398dce7323ae2e1b5fa2b70acb22714b89f841a8a33acec67c`  
		Last Modified: Thu, 05 Nov 2026 07:39:16 GMT  
		Size: 149.8 MB (149811976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:968b49761f848e1dd7e06a3506431e63f7c5d8e1da8c72fddec412af15fb930b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2550d88aec8775263706b908c51e0aac8752d22ff85870685162b1beee365362`

```dockerfile
```

-	Layers:
	-	`sha256:8cc7c8dc8af4a4b940ee21796137fa4f8bd3c17b5dff465e7675a89455859175`  
		Last Modified: Thu, 05 Nov 2026 07:39:13 GMT  
		Size: 9.4 KB (9418 bytes)  
		MIME: application/vnd.in-toto+json
