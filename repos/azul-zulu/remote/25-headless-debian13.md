## `azul-zulu:25-headless-debian13`

```console
$ docker pull azul-zulu@sha256:c0a1e2149b66743a949c683e47e57ba9df44d9c8dd28a6bbb79334504eea8fc7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-headless-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:ee30aa184da2b19f36c977f541b2e175905fcc6e05fcd9f6e9983c52bde4b36c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.8 MB (211830458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb1fc9b20641874764f061d50e7250fdb823fead751cda1391dcc555a6f53833`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Wed, 18 Nov 2026 02:43:46 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:43:46 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:43:46 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.5.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 18 Nov 2026 02:43:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Wed, 18 Nov 2026 02:43:46 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3247b350097969dedc5abfcb12b9c680cdeedddaa4f52de9de2e7323e2f41d81`  
		Last Modified: Wed, 18 Nov 2026 02:44:04 GMT  
		Size: 182.0 MB (181974326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:fb5046244eb9765333e9d47aee0141830986a9cf8b919f4b3336c7e3f0e53948
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89e1194e7aac70b687217e984aff8aa20a5c93ea868dd56f6389504c15b4e6dc`

```dockerfile
```

-	Layers:
	-	`sha256:2734ae1fa05928a552e552645ac5fab3b14f127077a69b03a61797149ab8c6f2`  
		Last Modified: Wed, 18 Nov 2026 02:44:00 GMT  
		Size: 9.3 KB (9301 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-headless-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:5d5cc2e3cfba7a2a145b71dd0cde6f4110d592963312a664b2b5045285187846
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.3 MB (211307183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8c1acc89c8629b7e1e1da07e34b8cbf92631d4d8d8299d5898c871d2fe09d6d`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Wed, 18 Nov 2026 02:43:44 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:43:44 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:43:44 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.5.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 18 Nov 2026 02:43:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Wed, 18 Nov 2026 02:43:44 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c52cf81acc3436eacc9a3ddf7bdacfcf7dd7d5b3087f606a41d63dd57ef78ac5`  
		Last Modified: Wed, 18 Nov 2026 02:44:04 GMT  
		Size: 181.1 MB (181093146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:5cff9c57c439156a1a6c060a2bdb12fefc91ff37238c6bbc7bc3390b1d9f26d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b430d127dc06e770cdf14d3aa4719045f2e6d8d2e2ae766f22d3e0a806ab150`

```dockerfile
```

-	Layers:
	-	`sha256:0d6c19f8b95afab293e74834573a2a00f12123201eee3009a542ee3720518050`  
		Last Modified: Wed, 18 Nov 2026 02:44:00 GMT  
		Size: 9.4 KB (9405 bytes)  
		MIME: application/vnd.in-toto+json
