## `azul-zulu:26-jre-debian`

```console
$ docker pull azul-zulu@sha256:25935bc8cbd05b6d7006de2eea0ecba3d0a62697d2227c36be1d91a363b2b942
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:26-jre-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:9207158e4864e8c3d7e541a5cd1bac2677deeacbafd0d2e1e19d928093d2dabf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.0 MB (122032959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18e817a99649558fe5f669091de3a4a5bd1549c3ce1a6d85ca3d4d444faf91fb`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:39:11 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 28 Oct 2026 01:39:11 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 01:39:11 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu26-*\nPin: version 26.0.2.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu26-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 28 Oct 2026 01:39:11 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae2213d10cdd3ced6db0967eb3700b2deccd8818e7b9545ff8e3a809e98f17e6`  
		Last Modified: Wed, 28 Oct 2026 01:39:25 GMT  
		Size: 92.2 MB (92177723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:daa6d66c60c2664b0035de7198d993c8bbde42f4822951f555dc50b0c8ddc908
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c13f28f89304121eae90ee3b66cc7a1e8f49435c4cd48fd79d474990127cef2c`

```dockerfile
```

-	Layers:
	-	`sha256:f5a612a3ae7eef1122c1288dbb919fd3d298d53310719f96feed3d22f04473cb`  
		Last Modified: Wed, 28 Oct 2026 01:39:23 GMT  
		Size: 9.2 KB (9197 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:26-jre-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:a7e554c2f6172d761a4f16825f17700064e1c390ded027438ae7bb065730c7d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.3 MB (122309310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f31bdf50f16664495e6c0c3637c2098da65fdd750c1cf0ffbaf43dd69f7df6c9`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:42:35 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 28 Oct 2026 01:42:35 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 01:42:35 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu26-*\nPin: version 26.0.2.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu26-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 28 Oct 2026 01:42:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f48680c2e75a7f7da9717c4696c1f0ed659721f6c92622170f25c8a6daf6072a`  
		Last Modified: Wed, 28 Oct 2026 01:42:49 GMT  
		Size: 92.1 MB (92095814 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:42b41a87a5ecf54693978eeb464aea1575685da852eeb805b105b20390030be0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41bd7dc1b2be2e66fad5ddf780d44976ec12c6175aa4881ebab7afe41f3665b6`

```dockerfile
```

-	Layers:
	-	`sha256:93cba4edc4b394f14e3c6264b473447b55efe1828cdafa16d0c7ebb9d67bb229`  
		Last Modified: Wed, 28 Oct 2026 01:42:46 GMT  
		Size: 9.3 KB (9301 bytes)  
		MIME: application/vnd.in-toto+json
