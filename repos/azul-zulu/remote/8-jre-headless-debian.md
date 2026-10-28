## `azul-zulu:8-jre-headless-debian`

```console
$ docker pull azul-zulu@sha256:a9aa78e451817a2b57cc0266ebcbad185c92c83fb788861798c36351297d291e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-jre-headless-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:4809813a66196e2ef28196786054d99fc2aff2645ea15f6df888b113de87b683
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.1 MB (77056200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6e4b92d632f3fa2980f21fb26cf41de301809f6f293bac22815f437e451b57f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:34:55 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 28 Oct 2026 01:34:55 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 01:34:55 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.512-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 28 Oct 2026 01:34:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d033d710bd15cc94b826a0cfa3ebea88cf21bb135f0b7485bbbb9bfb8bf68de`  
		Last Modified: Wed, 28 Oct 2026 01:35:04 GMT  
		Size: 47.2 MB (47200964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:54f0974d3caa601757370a917628bb20ed160173a4d1812e51a62b0cdbaef03b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48fac19cdceb293165585ee1c5ba780e5128c212e1d99b5a873aaa698f71cb2a`

```dockerfile
```

-	Layers:
	-	`sha256:2948884c0aa19887d9825b860e52ca7ca1e3b44409c979c15562a27da6565a82`  
		Last Modified: Wed, 28 Oct 2026 01:35:02 GMT  
		Size: 9.3 KB (9285 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-jre-headless-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:9ed7957931952119c639e3850cea09357cb31179e57e69f9b5d89d9d76b0225b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.6 MB (77634854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65650362cf877482d217a81bbba2c6e7677c63048f52e25d362d221adc43d98b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:39:11 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 28 Oct 2026 01:39:11 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 01:39:11 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.512-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 28 Oct 2026 01:39:11 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d2a1956f8f269303aab4d50641f68051d857015011e1d6e8c38d34a214b4c6a`  
		Last Modified: Wed, 28 Oct 2026 01:39:19 GMT  
		Size: 47.4 MB (47421358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:59d61e7b05aab9041a158a03aa93c53a76d4b5d32c5238cb556027ad5d3dfdb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8eb55afc007d8ac9d927545e751ad23ba0666cb8052cb88994f8805d667610d9`

```dockerfile
```

-	Layers:
	-	`sha256:058c8eb22dafbc3b849cb7229b05c6645e01229ad4ad3cc19ff32a4849b7de59`  
		Last Modified: Wed, 28 Oct 2026 01:39:18 GMT  
		Size: 9.4 KB (9389 bytes)  
		MIME: application/vnd.in-toto+json
