## `azul-zulu:11-jre`

```console
$ docker pull azul-zulu@sha256:315c380970bc554ff0ad88d408a606f5181604149f2847bd52126f8518c49ded
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-jre` - linux; amd64

```console
$ docker pull azul-zulu@sha256:6bedb4bd2373282f8dbb8afc5cad09077cdd70113620599110e0fc6afe5ac7c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.5 MB (96495781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a21c4f06657ce42a076a628f0ffa0d89de825fd08cc1eb4ee368e856ecb365cc`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:48:02 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 25 Aug 2026 00:48:02 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:48:02 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.32.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 25 Aug 2026 00:48:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7561f9d56615c7af962fcdb6d60e7b8210b770f9dce40854051b8c4bdc6917bd`  
		Last Modified: Tue, 25 Aug 2026 00:48:12 GMT  
		Size: 66.7 MB (66703123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:3367998a82a83275019a683c5d8cd477113478503b09b00ff36c0ce402a936d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81d197bf23421c3073553057703acd6fff6ec3c8f7e46d309460db640b04f9a0`

```dockerfile
```

-	Layers:
	-	`sha256:07a29a7162e62e4ca543d5f0868f5eb92385a8ac82e32285fefc7e5b123bc5f0`  
		Last Modified: Tue, 25 Aug 2026 00:48:10 GMT  
		Size: 9.2 KB (9200 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-jre` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:3b50ae8e63d7ccbb38e1054b48641ef4f2d3b063d375c92d948d9ecc681cd978
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.7 MB (96660854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99361be6c0535811d9110996984c51e3fe821dca99766f50ed4913ca1c3143b0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:49:38 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 25 Aug 2026 00:49:38 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:49:38 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.32.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 25 Aug 2026 00:49:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ca3298135dffa74bb4768a6cb454058484547f6101433f7e25d890e86ba8768`  
		Last Modified: Tue, 25 Aug 2026 00:49:49 GMT  
		Size: 66.5 MB (66501272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:8394af5af3ad19c55078187715a7f5912c67c5d38f158fdfcb5b1aba514a0cd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:482b8add9c26b68950dce581e6844e6d12d0d06d793e18e4f898bd7d1af2cfa9`

```dockerfile
```

-	Layers:
	-	`sha256:bce51f93dabd4658f949a807aefe363cf682adf1a9369d9af7e310d30ba90ef8`  
		Last Modified: Tue, 25 Aug 2026 00:49:47 GMT  
		Size: 9.3 KB (9303 bytes)  
		MIME: application/vnd.in-toto+json
