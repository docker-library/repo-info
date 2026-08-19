## `azul-zulu:8-jre-debian13`

```console
$ docker pull azul-zulu@sha256:4092c2f71ef1225b044acc11a69660398b3b3abe3a3f25f2fff0fb2230ac8bc6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-jre-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:6c4ea5ae8cecd3c32d6dc913021977e0d576e495b742cf970e53d7d573f77367
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.1 MB (79064211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97426ea0481da47b93de9187f8c10104e4c0b4659fccc2382eb5d1833db46db4`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 19 Aug 2026 17:34:38 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:34:38 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:34:38 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.504-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 19 Aug 2026 17:34:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a69e1f2a42ff694812aa71370144a273df1908659202f26d4853b33c255164b`  
		Last Modified: Wed, 19 Aug 2026 17:34:46 GMT  
		Size: 49.3 MB (49283446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:e1165cf484b9c4f8ac1efb0c452a01d756250f37b59aac72d7ac2f6ccd7d34f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:903a4baa933a806543c67d19b7c5b210790cddb02d79033b81ea36cc5c078902`

```dockerfile
```

-	Layers:
	-	`sha256:22a7293bfb06935f6a5b84d1f93020ca474dca400cf3b9d8f72d267cdc60bf7e`  
		Last Modified: Wed, 19 Aug 2026 17:34:45 GMT  
		Size: 9.2 KB (9174 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-jre-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:8fb7922b71d003b215386949496909d0ee31b1de1397a22a5c625b717c1eb743
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.7 MB (79653289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e92eb74e5de877e42296c2bd4439afd423c82383f5e077794de5e97d4475df4`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 19 Aug 2026 17:34:32 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:34:32 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:34:32 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.504-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 19 Aug 2026 17:34:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d1c24ab86fb6c99d2d6e8b6c3e9c4e608721cdfb1ac9b101e6b317591a2254f`  
		Last Modified: Wed, 19 Aug 2026 17:34:41 GMT  
		Size: 49.5 MB (49509680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:d565213e6a1198ea4e0488ecc71d6f48bfd32c79943c0ad474db9afb5f16957a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b39635115150703f118f41209e03091dcafa0c92c3725ec827b1ecabac367da`

```dockerfile
```

-	Layers:
	-	`sha256:a241a815e50190ee50680eecfedbd5ad5b4c8616799f6d8ceaf81b40f04e89a4`  
		Last Modified: Wed, 19 Aug 2026 17:34:39 GMT  
		Size: 9.3 KB (9278 bytes)  
		MIME: application/vnd.in-toto+json
