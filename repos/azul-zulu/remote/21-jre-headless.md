## `azul-zulu:21-jre-headless`

```console
$ docker pull azul-zulu@sha256:d988a23900a09d8f8da338246360bdf361cee147dfda6573164ca5ffccca624a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-jre-headless` - linux; amd64

```console
$ docker pull azul-zulu@sha256:a41499aac157fa903877b769bfba8602227334a8919abde961b07070c9235893
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.1 MB (104131634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26ece1320d411a01efc22e2d68abd09194eef444782cdc1771183775b76e3d72`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:43:30 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 05 Aug 2026 00:43:30 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:43:30 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.12-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 05 Aug 2026 00:43:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4129779ce92ee4d082340366bf72953b07e6e9c1ebc60b7a064aebf4dabf791e`  
		Last Modified: Wed, 05 Aug 2026 00:43:43 GMT  
		Size: 74.4 MB (74350869 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:662ada14eacdbe69fc1dfbf03a9b8a0085642be960a01ed176e1bfb62bcc505e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50c9a28ccec6aaccbda5b56e1fd94636a3950883770fcf8d5b70638c04c8384a`

```dockerfile
```

-	Layers:
	-	`sha256:d996bceb31e71922125dbc99982270c82e6a3b134360428edf5be859d96366b3`  
		Last Modified: Wed, 05 Aug 2026 00:43:40 GMT  
		Size: 9.3 KB (9301 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-jre-headless` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:65ddfb99f46dc951b1fb36dae1cd3a0e8343f023634e3c52fca12422b4cfe01f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.1 MB (104147446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ba7afb646846ab72caad496de46610e5c737720427a40c744206efc91d924c1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:46:08 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 05 Aug 2026 00:46:08 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:46:08 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.12-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 05 Aug 2026 00:46:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5887e8eccf6e741baaa9b64c8e6fe03ce4930957fda022469b647bf5be1a123`  
		Last Modified: Wed, 05 Aug 2026 00:46:20 GMT  
		Size: 74.0 MB (74003837 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:fa5eec00bbde1059b0c08ee0deaba2a355e287c19de00335a13c0649ccd9f784
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5c2e5cef6f335c5dc57ad147075e8c442c1f4a933331b5c76af3d5878440cf3`

```dockerfile
```

-	Layers:
	-	`sha256:ac4369842bcbced6f850c1c4492253265a5bd626e3f0b6245639012dd40c1a7e`  
		Last Modified: Wed, 05 Aug 2026 00:46:18 GMT  
		Size: 9.4 KB (9405 bytes)  
		MIME: application/vnd.in-toto+json
