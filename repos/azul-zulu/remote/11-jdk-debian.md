## `azul-zulu:11-jdk-debian`

```console
$ docker pull azul-zulu@sha256:2d50c9a380c77352e7a2cc3036596c5a071da3b18b8d51ce856d30e61e8d5d7d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-jdk-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:8c7a9a8f9a0d5a2ba22143a16d93f4270916031b1b1c0192e8412b69dc5150f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.4 MB (177383727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:595a99b0a32b926e33e704a26b6195e860dda8246eddd1d0506da16c53254d83`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:41:25 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 05 Aug 2026 00:41:25 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:41:25 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.32-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 05 Aug 2026 00:41:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Wed, 05 Aug 2026 00:41:25 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af81e502d179bb1eb1e6b36d9916d0cbd394a9c2e11b3cf0fe0e3fc219fe5f33`  
		Last Modified: Wed, 05 Aug 2026 00:41:40 GMT  
		Size: 147.6 MB (147602962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jdk-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:f63bc8071ef89867bf1505b59b970fa4fc362d8a2ccfb2ab50c0b0c2b0520c32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:002c7e7ac11f7f75261fd0f815f36cf8056b0e18d4e8424ceeda4989c7d8c924`

```dockerfile
```

-	Layers:
	-	`sha256:3e3ccbf7c636ba63253579dfbdfd82b03e61dee8571103769cfc807057fa553b`  
		Last Modified: Wed, 05 Aug 2026 00:41:36 GMT  
		Size: 9.5 KB (9507 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-jdk-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:19a9cfaf648b98add5fb0537780a3a84646d986b8ed8ceba9e604ed849e5a46c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.4 MB (177409919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddf70431617668bda6fd28170862ab1a4a6df320a3970c57050a545e0ff0a99c`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:44:14 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 05 Aug 2026 00:44:14 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:44:14 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.32-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 05 Aug 2026 00:44:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Wed, 05 Aug 2026 00:44:14 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a4fd414a26bde226a7de1a6d3bf09c8205bad30eef629096e2cc1be75848834`  
		Last Modified: Wed, 05 Aug 2026 00:44:30 GMT  
		Size: 147.3 MB (147266310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jdk-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:66c76375fc430f79d88b0cc1ec17ea73ef3ce6ba0419a89db437bde673647107
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4218918b4914fae2ba837e446f0cce33bc928b083c28478bf1459e956471356`

```dockerfile
```

-	Layers:
	-	`sha256:a254ffa683ba16cbbc094bb4450aedf76232b114869ea1500fb5038115097dbc`  
		Last Modified: Wed, 05 Aug 2026 00:44:26 GMT  
		Size: 9.6 KB (9623 bytes)  
		MIME: application/vnd.in-toto+json
