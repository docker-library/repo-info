## `azul-zulu:27-jre-debian13`

```console
$ docker pull azul-zulu@sha256:6255cbcaa5c3a87a6dbfdc90204a0562557f32b77fa74466bb9b28b2bc819d8f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-jre-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:67967dd86bb199895536a0a312c885ea07648fd2ff8d6ea1030695ac75ff5996
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.8 MB (123802612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96dd60dc1953f982a72e739f4ed0a270e81cd5de8418aa0fd6129a854b765eaa`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 16:30:58 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 16 Sep 2026 16:30:58 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 16:30:58 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu27-*\nPin: version 27-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu27-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 16 Sep 2026 16:30:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00e2e03dd81b23ab1195e525394fd4ed4572e022e78704f879e0419fd2a2992d`  
		Last Modified: Wed, 16 Sep 2026 16:31:11 GMT  
		Size: 94.0 MB (94009954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jre-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:21ce310afbd84d57f5d7f005dacf285f655a2ac3b50433d267e053b29485a654
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa71ebc29b6bf5d092440cb0b5ed3df489c0144a5d3646c8be02788a6656a9e4`

```dockerfile
```

-	Layers:
	-	`sha256:0e13a019843147cf6b404eedd89967c0b70e9694e4cd98af3adfcec82ed38399`  
		Last Modified: Wed, 16 Sep 2026 16:31:09 GMT  
		Size: 9.2 KB (9179 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-jre-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:3e6ac68060a3bb6ca3f5a02ee8e9e435f159c0ef921fa0c868f3056f05e89863
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.4 MB (124414556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32c7414fc32a58d43dcf6c5e8ba82f7b4d7650a8ec3628b1ea5b3a2e69781343`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 16:30:28 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 16 Sep 2026 16:30:28 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 16:30:28 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu27-*\nPin: version 27-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu27-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 16 Sep 2026 16:30:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3817cffd93eed2fe11841371e4021368c534b90445dbbb031d5479d467870d71`  
		Last Modified: Wed, 16 Sep 2026 16:30:42 GMT  
		Size: 94.3 MB (94254974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jre-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:0d29e9ff6a5b571212653a8c9413db732343d0a922e3e80efc476d20fc25aaa6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdcb15c82b7106c885c64c0238f63996c939ff0aacf9d6f1397fc320465dad27`

```dockerfile
```

-	Layers:
	-	`sha256:1b3057f8028aaf4760c4a0b4bfafca634663488924a5d1abd146fed4acdabc1b`  
		Last Modified: Wed, 16 Sep 2026 16:30:40 GMT  
		Size: 9.3 KB (9283 bytes)  
		MIME: application/vnd.in-toto+json
