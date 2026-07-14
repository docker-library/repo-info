## `azul-zulu:8-jre-headless-debian`

```console
$ docker pull azul-zulu@sha256:d746caed798d6707acffd787ca4a775a325fa64dfd9d59d4d7f834482f024db1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-jre-headless-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:7722c81b680810d15bfe740ee2b13c1e6e4c739530a43df6facba5a621d163ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.5 MB (77508235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f8da8352268db4a93d2a426524c577702fa1651f946f087cd42fde6392888c0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:40:12 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 14 Jul 2026 01:40:12 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:40:12 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.492-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 14 Jul 2026 01:40:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:378673e7a4931605f66858fe896c15ec9be43fdf9cabaa7b2e72d67152de050d`  
		Last Modified: Tue, 14 Jul 2026 01:40:21 GMT  
		Size: 47.7 MB (47727330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:f1ad8538769c4ec8cd0a09ffb0911a13a5537dbec64e1bf5869a9658f9367635
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:803e5dc4847e1a9c3bac34ed82c0a4ea4c2ec155ae59de42dddebd0383170444`

```dockerfile
```

-	Layers:
	-	`sha256:9f42b74e3178ed9a94dedf4c230c12b49ea1ea444b5e9ade01b319b58e1eecec`  
		Last Modified: Tue, 14 Jul 2026 01:40:19 GMT  
		Size: 9.3 KB (9285 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-jre-headless-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:7bbef78badb1a13b07bf33d66e06aeb56be1d1e02ad22b924435dd608d756db3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.1 MB (78095575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b892a1b0df24ad3d47ef4c8dad148c77d5fbc30a34c1012c68d25d9f8ef967b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:43:20 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 14 Jul 2026 01:43:20 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:43:20 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.492-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 14 Jul 2026 01:43:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbe3dc96edf9868c7ff77ff81152f3f920d0b3003820680b025aa3013930d0b9`  
		Last Modified: Tue, 14 Jul 2026 01:43:28 GMT  
		Size: 48.0 MB (47951870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:cbf3c95bcbd6a11495c3a2ec56e7b2399958f6c41d34c2c358d034ad5258f2b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9aa58c4e45784369f7c523a76f7bc8ae2a8759d76b746265317e1a26a7efbb50`

```dockerfile
```

-	Layers:
	-	`sha256:9d6133e85101e5f056ae3a0efd55e69590eb6aebdce553fe0f197bb095d0ea20`  
		Last Modified: Tue, 14 Jul 2026 01:43:27 GMT  
		Size: 9.4 KB (9389 bytes)  
		MIME: application/vnd.in-toto+json
