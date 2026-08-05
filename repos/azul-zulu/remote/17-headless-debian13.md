## `azul-zulu:17-headless-debian13`

```console
$ docker pull azul-zulu@sha256:04b7084601ac92cc038789e93c6ff219efa2a8c48fec3d605b0838defa5d3617
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-headless-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:e419b02092da098ab5649ae95235520b62e35ac309c4bade587e173ad5d4f79f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.2 MB (179215523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db313f22ad459aba62a916aa35e00ab8d867ee8b0e69406c8c6087687984fc00`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:42:17 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 05 Aug 2026 00:42:17 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:42:17 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.20-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 05 Aug 2026 00:42:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Wed, 05 Aug 2026 00:42:17 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dfda3c9779cc3b395241762d8b54a1876dc4215cbcf1ea2604d952790269f17`  
		Last Modified: Wed, 05 Aug 2026 00:42:31 GMT  
		Size: 149.4 MB (149434758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:08ed41eb12547f160d195a801d3ed4d7fee7877ccf64642f15cf5f8a2b88b9ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a65b87cea4af17e147356a9ff3a5921307db4b583c6cbaa88d362246bc234de`

```dockerfile
```

-	Layers:
	-	`sha256:5dc35a33992f0cb4bf96d53bdc3b7b7995f906ba585975ffb6b0d710f71c2927`  
		Last Modified: Wed, 05 Aug 2026 00:42:27 GMT  
		Size: 9.3 KB (9297 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-headless-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:b122ab2fde98c4bedc56f695399e9b542f7af0126d53636a8caf9db908a6ea15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.6 MB (179584392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20a34f1b0775e46f7891fbe72fec9c674ad80fc5730b8c94ffcacf1e065098ef`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:45:12 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 05 Aug 2026 00:45:12 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:45:12 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.20-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 05 Aug 2026 00:45:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Wed, 05 Aug 2026 00:45:12 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:315b5505f321597adfe3e369648db987af9cdfc821e7ded9e312e3ea419997eb`  
		Last Modified: Wed, 05 Aug 2026 00:45:28 GMT  
		Size: 149.4 MB (149440783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:80b4396f793e8944efa23cd8bf45d6a3d3e0b6c1d2773e64f0667b2b595da8f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9abce64524976de5299710b8230cd3c4225abadff912afca2ca981bf0aaefaf9`

```dockerfile
```

-	Layers:
	-	`sha256:78caad2185e8365b8495c1620126b3773e3ea41044a150781202e0810bbe365e`  
		Last Modified: Wed, 05 Aug 2026 00:45:24 GMT  
		Size: 9.4 KB (9402 bytes)  
		MIME: application/vnd.in-toto+json
