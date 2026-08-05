## `azul-zulu:17-jdk-debian13`

```console
$ docker pull azul-zulu@sha256:b97bc67db2745f2f224cc54592872454d9b619bafb7c8580ef91b91f8e62410a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-jdk-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:b4133ef15534ec2d0eb75a133ac473f68dcd01f6e2e4b489bb1cf6b04958f8c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.5 MB (181503970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:323619b709d02e542716ac015b6242265af2b5cdac4d5fd041e521eb79498ff9`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:42:13 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 05 Aug 2026 00:42:13 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:42:13 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.20-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 05 Aug 2026 00:42:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Wed, 05 Aug 2026 00:42:13 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59204b3cb6f49ccf2367c3c797cb89940362b5b1cbf65d8ec7a6e758d9beca09`  
		Last Modified: Wed, 05 Aug 2026 00:42:28 GMT  
		Size: 151.7 MB (151723205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jdk-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:3833b39aa7b8081999bdcbd8214c8404d38a383feda7c1598be2657a093315ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49c2f2475b34106f99aeaa52e418c28896fefa6075f00540b7f6140eccc7c496`

```dockerfile
```

-	Layers:
	-	`sha256:8b49aa89ca098b01db8347c70be4d025fecf0ff03fb8182c694501446093130d`  
		Last Modified: Wed, 05 Aug 2026 00:42:25 GMT  
		Size: 9.5 KB (9507 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-jdk-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:f066a3ea6fa46222dfc7de0a13d402b88fbcf2606f75b857b275ffc636ac913f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.9 MB (181864149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3d106f0b75476016e922c91e99ae26b52a24088adf53489ba2e45f92c0e974e`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:45:08 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 05 Aug 2026 00:45:08 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:45:08 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.20-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 05 Aug 2026 00:45:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Wed, 05 Aug 2026 00:45:08 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7df35a60aec67c6bd5098f037e4deb82804823777f94447edae5df3e865d58d`  
		Last Modified: Wed, 05 Aug 2026 00:45:23 GMT  
		Size: 151.7 MB (151720540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jdk-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:2ebb10c7b40d31c3db69a4757ac0b2f7035cd4ba18389e85417765446f06b5f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e31b1b05d7e2504fee61d285e42c12c3f3075c1dd62bd6c4e7f9d20b08ac4ae`

```dockerfile
```

-	Layers:
	-	`sha256:3c29ecf79ec5fb806f7dcd1e095d96e2d53b8fc1105e1b5ec682b6b098644a94`  
		Last Modified: Wed, 05 Aug 2026 00:45:20 GMT  
		Size: 9.6 KB (9622 bytes)  
		MIME: application/vnd.in-toto+json
