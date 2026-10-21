## `azul-zulu:17-jre-debian`

```console
$ docker pull azul-zulu@sha256:68e286b230f02d414b67828a79cbecc9160faeb97713b75b95cfa02786876edf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-jre-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:c956b0b7519368692ca285e1d00eef83f761bfb4fda1d14eaf78040d0713196e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.0 MB (100994108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3bd78391e930abf47c612059db14def3eee801c588473425dd9051f49971649`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:43:36 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 00:43:36 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:43:36 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.20.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 21 Oct 2026 00:43:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e10938c99818d0f624ca7a4aebf4a441cdaff01937cdad0eb79c7e4971685190`  
		Last Modified: Wed, 21 Oct 2026 00:43:48 GMT  
		Size: 71.2 MB (71150529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:1adfb76d65c99edd152020dfc1ac004ebabe600959d77e62762044f802df559e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bfbe6ea8e90f45a7a5201dfae0bde1cc778d0a7f5c3d03bebd071cffc51413c`

```dockerfile
```

-	Layers:
	-	`sha256:09aaa9cd5da1dae6e1bb3b5b1dd177e4c74fbac6e581019fbe80e23da9d6d917`  
		Last Modified: Wed, 21 Oct 2026 00:43:46 GMT  
		Size: 9.2 KB (9200 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-jre-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:f2f4b99aa77ba973a717575f3d52e3c3cad20fe7dd4a014d0e56689311554674
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.4 MB (101375229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af30b3ce286a963d851920e664338f1b6b9ba9be374c5ceb336b11a593b1cd5d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:46:57 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 00:46:57 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:46:57 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.20.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 21 Oct 2026 00:46:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:427dd2c55e471fdef33f637cc4b49ab90846e4488bbecd8188b3ad9ac0a908fd`  
		Last Modified: Wed, 21 Oct 2026 00:47:11 GMT  
		Size: 71.2 MB (71174751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:ba8ffc53cff5098cac1ac92ea86b6815b6afb1a882516010bd88b95847355cd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b3cad185da570a2a3987867071e91012a32b505e87716313f80f7f9323ae1cc`

```dockerfile
```

-	Layers:
	-	`sha256:f2d46b1ecfbb07e1a6df7d73722fa886cf21bf122d664cb33247a6f089df6c14`  
		Last Modified: Wed, 21 Oct 2026 00:47:08 GMT  
		Size: 9.3 KB (9304 bytes)  
		MIME: application/vnd.in-toto+json
