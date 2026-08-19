## `azul-zulu:11-jre-debian`

```console
$ docker pull azul-zulu@sha256:94ea9191c9e0729b4aa03cc08e255a322e7abdc95f8019e925dee18f389741f1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-jre-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:232a9304c4316c8d8e28ca028767d07d654eeb504147eb63d4dce1495331e596
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.5 MB (96483477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cf04b683d741da120e9be1f4ff3cbd072ca58b524c0f3221fce1cec83e7476c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 19 Aug 2026 17:35:18 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:35:18 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:35:18 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.32.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 19 Aug 2026 17:35:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7cbe0b3243ae5e55d1af750b5c8fa0f7385ff4082d96674acaf8865dc9902cc`  
		Last Modified: Wed, 19 Aug 2026 17:35:29 GMT  
		Size: 66.7 MB (66702712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:c4904c88174282e49777727a56657fa94bff7201bdc080f8e7c004c2e6da9408
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04d245236f5f537c6b3fefa97d25949a3ffd7d2a66a02b5ebcdf61179897168d`

```dockerfile
```

-	Layers:
	-	`sha256:d587ea98c36d4f4bc01210a6035f150bee97aaf48c17e708f08aacf2b72ae8b3`  
		Last Modified: Wed, 19 Aug 2026 17:35:27 GMT  
		Size: 9.2 KB (9198 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-jre-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:f7d650355c6a5b0ba9ed68cbda0a18b679f7c4c7f5c8c915bc6bce9e96863804
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.6 MB (96643973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51d8015233d762a13c379d9d4ccfb7000f19cb2985d1abb6be0afe59f841461a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 19 Aug 2026 17:35:13 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:35:13 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:35:13 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.32.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 19 Aug 2026 17:35:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:382e2e6faaec048e4cfec81b7de20f755a5c7460debd031308c9b65961c8d2d1`  
		Last Modified: Wed, 19 Aug 2026 17:35:24 GMT  
		Size: 66.5 MB (66500364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:798c5c84878cc43cd51cb0e1da20840802c072ec83fde44c3f028fd5bebe7c0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a22cd20227e80733d70af54b7ff2d1786d4e4f500397ad18414708e659bbb6f`

```dockerfile
```

-	Layers:
	-	`sha256:30e71dd3b26ce027220e5c43b3ce189a431aab85ada39686cac338ed7bc4ef09`  
		Last Modified: Wed, 19 Aug 2026 17:35:22 GMT  
		Size: 9.3 KB (9304 bytes)  
		MIME: application/vnd.in-toto+json
