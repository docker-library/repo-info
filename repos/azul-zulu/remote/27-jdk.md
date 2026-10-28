## `azul-zulu:27-jdk`

```console
$ docker pull azul-zulu@sha256:bf25a71cdcc0ecb1d0d8796bf5f96437125f0c66eda7c76193206d718742e56c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-jdk` - linux; amd64

```console
$ docker pull azul-zulu@sha256:7616fe1ec1a233050d3cca0bb9326887a89474614fbf7bfb61b92feffcc08692
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.5 MB (215460446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a17e7c7cd56abd8497120bef744b0ddde19b3ce073e62ad86972db452d47c7c`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:39:22 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 28 Oct 2026 01:39:22 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 01:39:22 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu27-*\nPin: version 27.0.1-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu27-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 28 Oct 2026 01:39:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Wed, 28 Oct 2026 01:39:22 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33c6a620d9913ece662235f6db643997dffd33ccee1c38a207e28999267209e6`  
		Last Modified: Wed, 28 Oct 2026 01:39:39 GMT  
		Size: 185.6 MB (185605210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jdk` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:60e65c5d5d2103d4b52b42840a6f44b83c147f73177c68ac816fcdf1564aa84b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d49489911ce6b91a33fa27a89958b10e6b3f0ba1f3f52c8cf7739af6353c3373`

```dockerfile
```

-	Layers:
	-	`sha256:4cdad5247cae5f94017743a80d16f410e015df2917bb6f57a28665e34b1fd0af`  
		Last Modified: Wed, 28 Oct 2026 01:39:35 GMT  
		Size: 9.5 KB (9504 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-jdk` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:290cc192f6b5d3a8386c5d834a2ee0f90cf71e2049d00c5627cf10cdffdc4d4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.5 MB (215509033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04ad1107671680979280164da4f763b8b14d34b65cf2a33601c6cd8c030b4502`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:43:05 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 28 Oct 2026 01:43:05 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 01:43:05 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu27-*\nPin: version 27.0.1-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu27-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 28 Oct 2026 01:43:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Wed, 28 Oct 2026 01:43:05 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5441ee8f785cdff681f5feee6a5be4459c841e0b489372be34b8df7a900b33bd`  
		Last Modified: Wed, 28 Oct 2026 01:43:24 GMT  
		Size: 185.3 MB (185295537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jdk` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:fc4f25f7f2f5d5492dbe6fa34fc27d23cea7b9d5b29eb4ff11c545fb85dc7aef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3abe58c425114a102c6028c4d1c71d84672031bed47c27263a1708a3c64a630`

```dockerfile
```

-	Layers:
	-	`sha256:351bbd5a8c1f8d014121fe6054c84d686e7b7a648202b9e4ee4db85594b5fb3a`  
		Last Modified: Wed, 28 Oct 2026 01:43:20 GMT  
		Size: 9.6 KB (9618 bytes)  
		MIME: application/vnd.in-toto+json
