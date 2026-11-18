## `azul-zulu:11-jre`

```console
$ docker pull azul-zulu@sha256:abc6cb6fdd524189bc8329de08cfcbbb4a73a367dc16db061fa66c04b465072a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-jre` - linux; amd64

```console
$ docker pull azul-zulu@sha256:2b1256668a4979055d7d208cd74d151d82f55204e634ba3dd86439cec06e0e9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.6 MB (96608747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0864390a396ba04524947bc89e766c643346d6de069024fdb14cd95e2847e0cf`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Wed, 18 Nov 2026 02:41:50 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:41:50 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:41:50 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.33.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 18 Nov 2026 02:41:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8eebb2699d72ac21e4aed67235d7cc6014d1d8c7110867d7e4c65fd0444a70bd`  
		Last Modified: Wed, 18 Nov 2026 02:42:01 GMT  
		Size: 66.8 MB (66752615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:d6d93a19cfa7ccc941399ce855d2b5030fd175807a26281e0a75089e27708188
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a93e0f55920d38caff5bfabe48e4d6483d6ad1dd9f0ed36380302ada7aaf6a0f`

```dockerfile
```

-	Layers:
	-	`sha256:0d27561f705a77fa06b4b61188465ecb6d58292623739c07d4579a333ab8173d`  
		Last Modified: Wed, 18 Nov 2026 02:41:59 GMT  
		Size: 9.2 KB (9200 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-jre` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:67df9bc022faadc5821ebc578a510027bca6553230d2b506a1da4c661f96ef9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.8 MB (96779076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:673ec9172120baca0152cedef31c6ee83ac2d269ba9503cee771734c88802b42`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Wed, 18 Nov 2026 02:41:36 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:41:36 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:41:36 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.33.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 18 Nov 2026 02:41:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef2d74236ca4f27fa179385006abd571b90c7b1838a081fc6160fa66c26dd298`  
		Last Modified: Wed, 18 Nov 2026 02:41:47 GMT  
		Size: 66.6 MB (66565039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:d6485991bcdd1d496699bd314b83429ea1778d1c641a1ad549b815b17cce2831
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73aa331704c07a6b339d40ba7538980d582332dfafe6f00881a821207605aa08`

```dockerfile
```

-	Layers:
	-	`sha256:49c5bc0194d1cbd06e1d96fd4330c1a6d639fa2bc2d71b791a88927d4806942f`  
		Last Modified: Wed, 18 Nov 2026 02:41:45 GMT  
		Size: 9.3 KB (9304 bytes)  
		MIME: application/vnd.in-toto+json
