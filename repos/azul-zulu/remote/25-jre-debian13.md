## `azul-zulu:25-jre-debian13`

```console
$ docker pull azul-zulu@sha256:942f3ecb8c5964f6e25fbb6fb4386a13ede9389b001a4328c2e05404cdcb1aa2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-jre-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:4f427394884d87c161fc7f1f83c18dbb655e59be4e4ac769864d2f02f88ed012
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.4 MB (120352269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d98dc551ae1f49dbe5e2f538cec73b6cdb9808dec1ccfa7bcf96738e9a6753cf`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 19 Aug 2026 17:37:12 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:37:12 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:37:12 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.4.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 19 Aug 2026 17:37:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d9ec228166c9a166bca6e8efdfc4dbdf8f225fcdb6716fba2c4d525b0ac9754`  
		Last Modified: Wed, 19 Aug 2026 17:37:26 GMT  
		Size: 90.6 MB (90571504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:14012edf3c1cae15e4f2a3641b8e1af7a712460e96f78b3940ed7ff74ce8666e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e19de3f06974673970a36910d7a93aaf32510a9c7cedaaf0a65d76ae33c5ade9`

```dockerfile
```

-	Layers:
	-	`sha256:5e3389c16aa93be1038c2bd9a9cf34273cad3d41801b51706e2a35e6d9aa90f2`  
		Last Modified: Wed, 19 Aug 2026 17:37:23 GMT  
		Size: 9.2 KB (9197 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-jre-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:e7df852a9ec0010466f17d3acd725ba9950a7c3e0f3f9e6363adf4395a712dc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.3 MB (120300280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f444c3c849553b0e7225a83bbfce1453c3a62786521a4c7b429f980fe826cbb`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 19 Aug 2026 17:37:24 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:37:24 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:37:24 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.4.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 19 Aug 2026 17:37:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f495c5f4e351a179e54fb4ffbee46d538ef5ca17bb535ec7d2c43e7a0f3e7ff3`  
		Last Modified: Wed, 19 Aug 2026 17:37:40 GMT  
		Size: 90.2 MB (90156671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:12137d9751a65e5c34c5f77f9d2fead7f3049535a5255753352e0a7f06153f37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c339be6e89a86cfef7e6ffaf6e6259d0751d3e99b7fc52f669a1d28df4ec628e`

```dockerfile
```

-	Layers:
	-	`sha256:fe084a93e35870432b6684101148befb2129ab916fc1495c3a23257e7f0b8d67`  
		Last Modified: Wed, 19 Aug 2026 17:37:37 GMT  
		Size: 9.3 KB (9301 bytes)  
		MIME: application/vnd.in-toto+json
