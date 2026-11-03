## `azul-zulu:21-jre-headless`

```console
$ docker pull azul-zulu@sha256:33f3323770a67aaa10ec00135542d35b40e95346b1ec88efe03859533e91beaa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-jre-headless` - linux; amd64

```console
$ docker pull azul-zulu@sha256:ed7986499fa6352d8fee86d4047cdb7b491d30ddfdc9fbd6343e8a23990b8c45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.4 MB (104373368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:849848996140f5b2ec867c3f946fd81a2c7aaa699164f49873bd9b3c314ed002`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Tue, 03 Nov 2026 00:09:28 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 03 Nov 2026 00:09:28 GMT
ENV LANG=C.UTF-8
# Tue, 03 Nov 2026 00:09:28 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.13.0.3-5\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 03 Nov 2026 00:09:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b032fa93ae5a46756f14e3863823f10fccb954217526e4b275bde1633931d8b`  
		Last Modified: Tue, 03 Nov 2026 00:09:40 GMT  
		Size: 74.5 MB (74518132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:2491192c72ea8f2a29397992d668b29eae2e40798ad783370891c0839fd9ebfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:883050cafe7496dc28f957ea0c93d882dfde5295192118d11a8a3eb472e62362`

```dockerfile
```

-	Layers:
	-	`sha256:8be7d95df576febcc7ff6312fcfde3478417b1598e41fb6a85d2b74ff0279db2`  
		Last Modified: Tue, 03 Nov 2026 00:09:38 GMT  
		Size: 9.3 KB (9321 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-jre-headless` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:bb992b73cbc7d9fe1d2fba27f89cb2f8d135d78ce3598a042c4ed20fbec30a58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.4 MB (104388895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7be492aa182c84022dda229e41da6b47bddef0f72651b76b8ca41621f57d38c2`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Tue, 03 Nov 2026 00:09:41 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 03 Nov 2026 00:09:41 GMT
ENV LANG=C.UTF-8
# Tue, 03 Nov 2026 00:09:41 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.13.0.3-5\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 03 Nov 2026 00:09:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36c70872993d885caf05b7c9ade68e318d8ff1cf76cf53014d52e7d81b517fa7`  
		Last Modified: Tue, 03 Nov 2026 00:09:54 GMT  
		Size: 74.2 MB (74175399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:97982e0b774519f9e1d11ebca0bce66a4a73c424a8307815561d0ba29d983330
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b01cd8189d28a3f16c0ddba2f7a1747623dd6ec9cb9d1c41dfc06c7320f224bb`

```dockerfile
```

-	Layers:
	-	`sha256:94c658b70901cbdfabb1e6331b61295cc3d3bbf81ca4964a382f102ecc9daad3`  
		Last Modified: Tue, 03 Nov 2026 00:09:52 GMT  
		Size: 9.4 KB (9425 bytes)  
		MIME: application/vnd.in-toto+json
