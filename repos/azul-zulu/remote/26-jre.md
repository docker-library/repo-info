## `azul-zulu:26-jre`

```console
$ docker pull azul-zulu@sha256:e34157840bf338dab5a56115f35e9399d9d25a06e5187bcd0a91c8ce1e3758d2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:26-jre` - linux; amd64

```console
$ docker pull azul-zulu@sha256:32749f64c170ddf82b99eb944822a0890873915bd9a8077504bd9e500a911f29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.0 MB (122033874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9eece57a9ab1002d80a926de0bb4c054871b9e389aa220c84a6be1976a29f95d`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:37:34 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 07:37:34 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:37:34 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu26-*\nPin: version 26.0.2.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu26-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 05 Nov 2026 07:37:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cc6a5a1a05ba8a15a46101cba2f0dd15709a4b3a7d5e02fd49562d3875a4c0d`  
		Last Modified: Thu, 05 Nov 2026 07:37:47 GMT  
		Size: 92.2 MB (92177742 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:2fa01aedb0a5607eb8f50ee324e62d0199d60b1fbcd0331fb6a8fe0b4c8b2074
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:330ed0744a6ac43d7f1bf0510dafd50065fdbff070c96461ec3d3f167fcd072a`

```dockerfile
```

-	Layers:
	-	`sha256:db2cc41b10346d844340feb66a39926771379aef0e56326b74da74f0961b71b4`  
		Last Modified: Thu, 05 Nov 2026 07:37:45 GMT  
		Size: 9.2 KB (9197 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:26-jre` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:4a0c20763858662ee999ca105b8ac4d150918ae488b1199822e689d2a6ddcdb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.3 MB (122309952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb144db4c1859416327de08ff3fcab4f6e7e004c99e30f4b45cee61d4f77034a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:41:26 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 07:41:26 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:41:26 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu26-*\nPin: version 26.0.2.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu26-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 05 Nov 2026 07:41:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e390d62f4c47ed9efa6002f8681cb43c94f6741125b701866c7fb52f95ac1fc2`  
		Last Modified: Thu, 05 Nov 2026 07:41:40 GMT  
		Size: 92.1 MB (92095915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:776799288fd2527925b557617af731fc8002271fbe5f4711c0e678d1e04e4a62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebed260a95a8183749a74571e3c2447ea8282245ead93a54b0650267b7f7da0d`

```dockerfile
```

-	Layers:
	-	`sha256:7871dd2a436c585e5c69db707d635a8a65951c9cf9e252acf67f2a89e01b4e93`  
		Last Modified: Thu, 05 Nov 2026 07:41:38 GMT  
		Size: 9.3 KB (9301 bytes)  
		MIME: application/vnd.in-toto+json
