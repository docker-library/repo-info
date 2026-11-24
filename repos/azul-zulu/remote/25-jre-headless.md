## `azul-zulu:25-jre-headless`

```console
$ docker pull azul-zulu@sha256:935ae1f6b174ef46703e1fd82dd7ef695f261fbead1b6b3564ee755bca83c4e9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-jre-headless` - linux; amd64

```console
$ docker pull azul-zulu@sha256:38d8344b9b6e731303af6f334d3a5efe65a66e620b857a4118d04f3cf65d11e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.4 MB (118416625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:087d79b232f9d4fe7694d6ae95181206cd51ca55793c8ce777e8f1ef9c447ec1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:38:22 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 24 Nov 2026 04:38:22 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:38:22 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.5.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 24 Nov 2026 04:38:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7f7cc455acd19dd49e4d4848eb97e9927903175f7b833d28bf7093386914802`  
		Last Modified: Tue, 24 Nov 2026 04:38:36 GMT  
		Size: 88.6 MB (88574443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:2be3391d4cba743aafd4df9c9311c380e83a67a9160976d0c7417adafe2f5fef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28b378727c5f84d5fb9133add2c84f86b7b72184a408850026f442a11ab15f9f`

```dockerfile
```

-	Layers:
	-	`sha256:6c3aa3972f467d8450398d04454fa62c79aecc2f8e2087ccc6aa455a2cd43793`  
		Last Modified: Tue, 24 Nov 2026 04:38:34 GMT  
		Size: 9.3 KB (9308 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-jre-headless` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:7de9cc534575047d7c36b26a72362c987f19033abf812b4a7b07d361f1aea48d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.4 MB (118360460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33d077aeebea9c0f7b3c7a37c262e6c2870ea7648a107bf039d378606daafc3c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:42:42 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 24 Nov 2026 04:42:42 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:42:42 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.5.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 24 Nov 2026 04:42:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fae811d80eb9ff2f4aacd4072eedf1e906e5103ed8bb07d560c26f403999c519`  
		Last Modified: Tue, 24 Nov 2026 04:42:56 GMT  
		Size: 88.2 MB (88162426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:cc2a2f759962b0ebda4e6dd267ab6d08d12bfd144568f41e2cdd1d3dea4e5364
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0fc5074b9efb3fae06b8e34cdd95b0d3738a5e2cfb0a0b5d02c209ec4fd61d1`

```dockerfile
```

-	Layers:
	-	`sha256:545c7e63db02e55578c73a7d1c8c89d216b2b69c2700137469c3572431192b05`  
		Last Modified: Tue, 24 Nov 2026 04:42:54 GMT  
		Size: 9.4 KB (9411 bytes)  
		MIME: application/vnd.in-toto+json
