## `azul-zulu:17-jdk`

```console
$ docker pull azul-zulu@sha256:5830d072b2cb930f37995ca192c39189e626bc7814f16c26eb04f3b46d5dcc5c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-jdk` - linux; amd64

```console
$ docker pull azul-zulu@sha256:2f6eecc6d41591e0cb2386c088ace785eb3957a956881e87b687e0c4d010b6e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.5 MB (181503023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41de3c423c6db40ce231a7a8ad5c4a8422e24031288eae074f6b0745e6c6f214`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 19 Aug 2026 17:35:54 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:35:54 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:35:54 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.20.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 19 Aug 2026 17:35:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Wed, 19 Aug 2026 17:35:54 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28c241b92b47f74b4bd1fe537b6c7930ba050eaf44cbbdcb4697c2cc279ad5aa`  
		Last Modified: Wed, 19 Aug 2026 17:36:09 GMT  
		Size: 151.7 MB (151722258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jdk` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:600c23b421f9491554b742298d0965fd29924796534e6f4e97e77f6e465dae6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cf8b25e55ba77a717fa740ce729adc8af2e737e67183d12c960d72a6a3a2ec4`

```dockerfile
```

-	Layers:
	-	`sha256:05e56f0209cafa1efe986a378eefe6df89bf06e4f8ce98a81e6152a486fc1760`  
		Last Modified: Wed, 19 Aug 2026 17:36:06 GMT  
		Size: 9.5 KB (9517 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-jdk` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:fedc02c94df3c42918a86c1fcfe9fb11c0e6829954194b831efaec501d2d9f94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.9 MB (181860075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc9f0dd6bd5f97847a2e1ef8c94ebd9c3e71ed18e279750b19227552d3c24082`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 19 Aug 2026 17:35:59 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:35:59 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:35:59 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.20.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 19 Aug 2026 17:35:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Wed, 19 Aug 2026 17:35:59 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2d22b25e024263dde1b494d8713d0196810529c05b86dde7b5d2649a517ef8c`  
		Last Modified: Wed, 19 Aug 2026 17:36:15 GMT  
		Size: 151.7 MB (151716466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jdk` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:27fd374674eb26890ce2b54c22ab6d1a881f825425c1de0f6be39aae2d5249e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af341be0523c25e421a62d2b64fb1aba8e5798fc3a4cd68a0612533d0f6c427b`

```dockerfile
```

-	Layers:
	-	`sha256:83420b8cad870484197d3c562c44fa7845026b566b8a2076c15e2246d8427b3c`  
		Last Modified: Wed, 19 Aug 2026 17:36:12 GMT  
		Size: 9.6 KB (9632 bytes)  
		MIME: application/vnd.in-toto+json
