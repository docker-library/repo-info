## `azul-zulu:26-jre-debian`

```console
$ docker pull azul-zulu@sha256:17fb1d93fff90466f61aa1c2ced60320049ce6afe13701872aa4a540e8ae4e25
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:26-jre-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:dd706e8b4000aea306b9375a8f154b8f20177677dd5881a3f2dc33a782bd7989
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.9 MB (121915687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac6fa0365358f6ec8232455ec191c2112653b1858bb2ab084a9326fa28a82dba`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:43:24 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 14 Jul 2026 01:43:24 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:43:24 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu26-*\nPin: version 26.0.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu26-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 14 Jul 2026 01:43:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f13fa0fdc87c439e3a41dcf19a0f597ee3ee16e49e787a4b5db0eecf51b336a`  
		Last Modified: Tue, 14 Jul 2026 01:43:38 GMT  
		Size: 92.1 MB (92134782 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:15de534baf4633aa6b132fd2c8c7a822cfdf93111f597c178055b4f0be179b0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d95c666c9734d03be29e02abd26eeb89f931d521d59bb0858dc37a9af31463ec`

```dockerfile
```

-	Layers:
	-	`sha256:8d09f80ff76cff344ddfbd2b517c8644e108dd59d39721424690f71f786b67bb`  
		Last Modified: Tue, 14 Jul 2026 01:43:36 GMT  
		Size: 9.2 KB (9187 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:26-jre-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:f26e4f36b80bc8e26dfb867bd08c8b86156b54ccedaf767fa9e6a56acb10ff5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.2 MB (122184114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80ad89cffce956f916107edb31d2dd618f73759ec5132458b6247f837c512829`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:46:39 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 14 Jul 2026 01:46:39 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:46:39 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu26-*\nPin: version 26.0.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu26-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 14 Jul 2026 01:46:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3839367c5f53e672969a8d469cb44b29f7b60def28438dc3946fc77491005f86`  
		Last Modified: Tue, 14 Jul 2026 01:46:53 GMT  
		Size: 92.0 MB (92040409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:76ec522e7b95fb12bc74e5f645b65244cf0ecf161a3598f19e50cf4c8f458c32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e79fa4f2542623538d48899426b542bce5667cf227f6d6409ea62229bb147b4f`

```dockerfile
```

-	Layers:
	-	`sha256:d929c0adeab855e2db3534b19cf29d488f6e5fa137b7bfa2f544a60e3411cde1`  
		Last Modified: Tue, 14 Jul 2026 01:46:51 GMT  
		Size: 9.3 KB (9291 bytes)  
		MIME: application/vnd.in-toto+json
