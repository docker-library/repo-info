## `azul-zulu:8-jre-headless`

```console
$ docker pull azul-zulu@sha256:9442a5733e550d6a2d3d7131cefafd52a8b6aafa9c672849a41dd16bb1f9c246
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-jre-headless` - linux; amd64

```console
$ docker pull azul-zulu@sha256:3e986c1dc00aefca4b7ab98d0bbbc61e635b0402eecddd2fec08f01e644677cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.0 MB (76956296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b34123b3389b60d0bfbef8366aa6abe8d8dc2e669c6d66d892c61252e0d2efa1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Thu, 23 Jul 2026 22:28:25 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:28:25 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:28:25 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.502-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 23 Jul 2026 22:28:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a02eb831b2401aace2c4a4c357db8a09b85c4ac130d445e1fa6230a955d06651`  
		Last Modified: Thu, 23 Jul 2026 22:28:34 GMT  
		Size: 47.2 MB (47175391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:c1d750dfbfbbfc8269fdca4042159cd4264ad04627cdb4f817b0bec41a901e3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa12f8f012d43d589181df659758f8236a90a05450738e060f4061f1f9553756`

```dockerfile
```

-	Layers:
	-	`sha256:6cdab8b5555fe8c159f3f8de15b6b0fa42f0abf5dd4d94d8a53d2293d0e3dade`  
		Last Modified: Thu, 23 Jul 2026 22:28:32 GMT  
		Size: 9.3 KB (9285 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-jre-headless` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:84da5918a562999b89e63a363346c34ade6d437bc0159094fa6878cd00a8b794
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.5 MB (77540542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:377e678bd9d328de363f68f74b1734fe04d7d0b118b65d2033acdeb84fa5e7e4`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Thu, 23 Jul 2026 22:29:20 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:29:20 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:29:20 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.502-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 23 Jul 2026 22:29:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5889bf0f55e1ce5188e224e1e46b385254e510def31da915443433d5cdcb5bb9`  
		Last Modified: Thu, 23 Jul 2026 22:29:29 GMT  
		Size: 47.4 MB (47396837 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:eab6f348230512af589f6bce5f3671cb7b5e9c4e88e8ee043605b39c5bb09d87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4e0ac928bfcea57145438650e5d62e2f354defa75bbea48db8f03c65a264aa3`

```dockerfile
```

-	Layers:
	-	`sha256:a40c4bd7470a78fb0911f5f16964845f7448aae31ec6728acba64a3fb46dfe3a`  
		Last Modified: Thu, 23 Jul 2026 22:29:27 GMT  
		Size: 9.4 KB (9389 bytes)  
		MIME: application/vnd.in-toto+json
