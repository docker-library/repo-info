## `azul-zulu:8-jdk-debian13`

```console
$ docker pull azul-zulu@sha256:ec4ba954b91c0d6dfd4e9b9c45d66d2f52e483b92f3e81bda7d540c39bab1002
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-jdk-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:b3cf7b232cbbc7984de265e0bcb7a3a7884c61a186258c3830ce4a77e8218e03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.3 MB (91289647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1076fcb70ec492f514b57c7fcd3e1b87bf580c678184c330d7fcfecc183c367a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:46:14 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 25 Aug 2026 00:46:14 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:46:14 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.504-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 25 Aug 2026 00:46:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca4fd1dea175d37a468e4430eaab09cf6936fd6241cca92afac6a537fdb9fd26`  
		Last Modified: Tue, 25 Aug 2026 00:46:23 GMT  
		Size: 61.5 MB (61496989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jdk-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:325c885c712c85b8cac109581cdff70fee2c76ad04445f0d803130a94c411b46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23f45a1fd76995a84a1b5e80f794fc9ebc0a0e6863b360ee4444cc75117ada44`

```dockerfile
```

-	Layers:
	-	`sha256:d158f78386f0db87f996018a74226be3a0c45a59298d19402025d7b1961f36d2`  
		Last Modified: Tue, 25 Aug 2026 00:46:21 GMT  
		Size: 9.5 KB (9468 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-jdk-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:11e7c2cd95cc1fd8f8f28dd616b06356fc3d7f1868dc283e25c4ac1d2e90a9ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.0 MB (91974515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca2a0fb01161b945305e527efdfb79eac1131b8f63cef66bf8da6a290cf55843`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:48:24 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 25 Aug 2026 00:48:24 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:48:24 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.504-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 25 Aug 2026 00:48:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39ab08ed2c218c91418af1da62cf7bf791e63b93284d69bdfd6df88c357880b7`  
		Last Modified: Tue, 25 Aug 2026 00:48:34 GMT  
		Size: 61.8 MB (61814933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jdk-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:a4f9d553f8f98203e1eff090d3f2d65e8d173037ac39b58f57cdbee9ab84b166
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9368bf09f2cb2be8292bae8fed0be2c1b594fa184b20a076cb57b9af5063834a`

```dockerfile
```

-	Layers:
	-	`sha256:924e842dde8c341278b25c494ef62d860ec5b6a74007de45509efc42caa61f12`  
		Last Modified: Tue, 25 Aug 2026 00:48:33 GMT  
		Size: 9.6 KB (9584 bytes)  
		MIME: application/vnd.in-toto+json
