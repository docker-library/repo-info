## `azul-zulu:21-jre-headless-debian13`

```console
$ docker pull azul-zulu@sha256:b2ab3ef5cb988b43a067caae25782ce8016b82fbe078239c4f664aee05140fd5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-jre-headless-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:f4b5de9d41c28d657be0a2474fe60b2bb83e5a70103fb9577d323f740b5ca719
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.1 MB (104147394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a457a730835b61514d24e74e2f872c5c79a4d1e5adf8e0d535eda17b77fbbbc3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:49:31 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 25 Aug 2026 00:49:31 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:49:31 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.12.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 25 Aug 2026 00:49:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4df16cd39112b9101de20e434d3af55cdead659ef208cbcbc1beeeb87f7c7588`  
		Last Modified: Tue, 25 Aug 2026 00:49:43 GMT  
		Size: 74.4 MB (74354736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:b9edbd16332b838c0eef4122dc811d431396604b70745f1727030063da0e92dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b9dd38e27ab3de38ef34c998a8adfba6237efe8274910aad3c24255b22005dc`

```dockerfile
```

-	Layers:
	-	`sha256:6a307e4fc67771037337beb6e52cd477d8bbe6187764af96b65211f41d6df241`  
		Last Modified: Tue, 25 Aug 2026 00:49:41 GMT  
		Size: 9.3 KB (9310 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-jre-headless-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:8f0a8d4f064e5bab702c7a838f44095b0492f9aaf822ecb887ab4afcc2c4d613
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.2 MB (104164548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa1dfa39840a7408b51a9001b98b32df25b9334c500cac3344977f286576a307`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:51:42 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 25 Aug 2026 00:51:42 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:51:42 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.12.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 25 Aug 2026 00:51:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f8cb32dbf3b8fbdfd1c4f601b930e85967e6d182e0b11643694c7c6e5ae54ab`  
		Last Modified: Tue, 25 Aug 2026 00:51:54 GMT  
		Size: 74.0 MB (74004966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:4d52242d9398becb63ed26ead3f3937219467ea89817c2f2512377f2f28c7453
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d01464a7688fad18b2346be47b2053152eae8bcf440d989c0cfb366e93be3e3`

```dockerfile
```

-	Layers:
	-	`sha256:1261eef8a7770f311602e5ada660f764ef2df81e6c97c3a49ab6183666950c19`  
		Last Modified: Tue, 25 Aug 2026 00:51:52 GMT  
		Size: 9.4 KB (9414 bytes)  
		MIME: application/vnd.in-toto+json
