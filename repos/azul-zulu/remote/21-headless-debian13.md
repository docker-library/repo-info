## `azul-zulu:21-headless-debian13`

```console
$ docker pull azul-zulu@sha256:e146ce85d6fcfcb4075013990ce0a5bca59218844276eae05be00bf94101fae4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-headless-debian13` - linux; amd64

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

### `azul-zulu:21-headless-debian13` - unknown; unknown

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

### `azul-zulu:21-headless-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:30a21a3fc230dcfe5e73ee681cf10b6b125ae7ee69d862fde27d092903f0eba5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.2 MB (192213388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9d9f8ca881bb0e0ca67cecf5d2cc7dca7b68ccac062e6302f8b35f394790742`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:51:05 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 25 Aug 2026 00:51:05 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:51:05 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.12.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 25 Aug 2026 00:51:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Tue, 25 Aug 2026 00:51:05 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc536a1990307a376634390897b3d194a74d1f3ed2d51605d1c81bcd046e4360`  
		Last Modified: Tue, 25 Aug 2026 00:51:22 GMT  
		Size: 162.1 MB (162053806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:db966a5adad3d3a0645a2827d4b27076b88b61ba582fb731abf989d5c0eebb55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1aaa0fd515292dd9c70ecbdd49d7b394c20d130faac05125be38266392258d3`

```dockerfile
```

-	Layers:
	-	`sha256:dc3fa381a37084a6af0c3895733a8848f5480b7ca01f9f6fa22c9d4aab0da15e`  
		Last Modified: Tue, 25 Aug 2026 00:51:19 GMT  
		Size: 9.4 KB (9412 bytes)  
		MIME: application/vnd.in-toto+json
