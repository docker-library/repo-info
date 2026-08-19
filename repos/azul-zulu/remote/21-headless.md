## `azul-zulu:21-headless`

```console
$ docker pull azul-zulu@sha256:4232422e26e2d94172a98c3f967a17b136f47390abb169240d4e50b84f25bed4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-headless` - linux; amd64

```console
$ docker pull azul-zulu@sha256:37e3c3f088d94d4aa7426a6b622d4d3a6c067b84248fef39426e2738d9b363bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.5 MB (192541972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df9f648472744904d46a5c23aece0cccc86054526a2a29175b8093fb7605a6bb`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 19 Aug 2026 17:36:32 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:36:32 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:36:32 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.12.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 19 Aug 2026 17:36:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Wed, 19 Aug 2026 17:36:32 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eeffd58fee5d17b9a7903a005c3d55ccc5f8872d069f4a07a3a36ba410e98045`  
		Last Modified: Wed, 19 Aug 2026 17:36:48 GMT  
		Size: 162.8 MB (162761207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:a263207a5fc5aea0ce6323dc5c22f9b49eaab5cb1eff68c81f5378eecee8b06e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f920e1f513cb287d6c29836eb28a178ebfb50ed52fc5cbf21f3dc4895cdf5969`

```dockerfile
```

-	Layers:
	-	`sha256:b98298e8d0dfc180e3f45ec856b9c6771d228d9f13667aeb2c0a0f0fca881c43`  
		Last Modified: Wed, 19 Aug 2026 17:36:44 GMT  
		Size: 9.3 KB (9307 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-headless` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:4b7e3e14307651f90299e75c224c2aa9079930428b5c1258f0a81b0b2053bd20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.2 MB (192196231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b6c56f5f93fbcf6e5a393b12070ffc287814b4471a49eac5bba5e8fc4be369e`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 19 Aug 2026 17:36:42 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:36:42 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:36:42 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.12.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 19 Aug 2026 17:36:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Wed, 19 Aug 2026 17:36:42 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:405d57a836e881180f81709fcf331fb83eb8caf69ca417d5487f352498c4545b`  
		Last Modified: Wed, 19 Aug 2026 17:36:59 GMT  
		Size: 162.1 MB (162052622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:0eec0251379bf1ab346362a65db724e800c4a29c736327c4aba1a4c389d8d434
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e36d218f3708d10e8e4522300fc7bdd80debd15a3e323b024a5897b7b4c0017b`

```dockerfile
```

-	Layers:
	-	`sha256:03bea7e9c5ea9c131bbddd76fcc1e80d1bc1921f702900afd23e6ea4d674ed71`  
		Last Modified: Wed, 19 Aug 2026 17:36:56 GMT  
		Size: 9.4 KB (9412 bytes)  
		MIME: application/vnd.in-toto+json
