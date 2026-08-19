## `azul-zulu:8-headless-debian13`

```console
$ docker pull azul-zulu@sha256:12d618b15bdeda70aa50a835b487858953e700376f53166732fdf3d5316ebab2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-headless-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:e7346f2578958196773160bb583e76c14b2b822ece9ee449ac2d11fb015eb96a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.4 MB (88378104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d2e77aa659aeaf460e0bfd6187135180a7f9b816d7a6ab845b3bf9aaef3ee5a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 19 Aug 2026 17:34:26 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:34:26 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:34:26 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.504-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 19 Aug 2026 17:34:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19ed7e83a6fb4dfcfc612ce364300a6c29a96f247f8d543efc414c46816f9b54`  
		Last Modified: Wed, 19 Aug 2026 17:34:36 GMT  
		Size: 58.6 MB (58597339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:f9474e4b35dc76792b05acb185f9565151d03f288cb602a8d4cb40513928f80c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e871659502e476725c73e515332ce37188e412effc1ee0f38c317eec3d2da8e`

```dockerfile
```

-	Layers:
	-	`sha256:5ef9fc9951ead1c2cfe54b7c9d61424d24ff1a41ad920377afbd5cbe723ffed3`  
		Last Modified: Wed, 19 Aug 2026 17:34:34 GMT  
		Size: 9.3 KB (9261 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-headless-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:52cd9fa42a1da905c645855434421b9e929836ec932e9f90bd65e37f78702499
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.1 MB (89068805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de4362cfcce839ed35a89ea0b76ef61e75b82e29ae414439aa6199dfc6357639`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 19 Aug 2026 17:34:34 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:34:34 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:34:34 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.504-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 19 Aug 2026 17:34:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11a4ae37cd70465e53409fe419fce119010fa604c4a8e345a77c961b1106cda8`  
		Last Modified: Wed, 19 Aug 2026 17:34:44 GMT  
		Size: 58.9 MB (58925196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:4d381e4aad46e56c0c991154c589cff6194933e70421e89e23d00667984d72cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:176fc3ea4fbfa3f75bb6385d850597699c6128c5d0555d5a4a25630a3e94cc8a`

```dockerfile
```

-	Layers:
	-	`sha256:1f024b90119b481e6783a02cd8b1a88d63d19f8e717d482c47642d9b70f06ba6`  
		Last Modified: Wed, 19 Aug 2026 17:34:42 GMT  
		Size: 9.4 KB (9365 bytes)  
		MIME: application/vnd.in-toto+json
