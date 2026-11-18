## `azul-zulu:21-jre-debian`

```console
$ docker pull azul-zulu@sha256:d05b8191ab2028673784220ac078bf9b8f554127cca85e85a82c136a9e1088b3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-jre-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:37cb1059b8cf596c9c05c4dd7ed2111d8edd6a1d4e419613c19f95e16802f37d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.5 MB (106457963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59c17ca933cddd59e97cee24556138ae16cbdb793fb1cd65a2d16e1b935cb73f`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Wed, 18 Nov 2026 02:43:02 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:43:02 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:43:02 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.13.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 18 Nov 2026 02:43:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:371e9bc647073815c33ef294209abbe57e2ea70311b0f843978e2928a4a89b54`  
		Last Modified: Wed, 18 Nov 2026 02:43:14 GMT  
		Size: 76.6 MB (76601831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:043c6084589b292de9b26e0771e306c7f70d5b193aad4b0e4bd1b04e406fad1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b9a99d22d773b6ba11564b25e17db8e66946e4c90b22444432afbd7d40f1ab3`

```dockerfile
```

-	Layers:
	-	`sha256:2b96dc64675c0574d5fab7cb15748e2d2cba088a92c272067940c4f94aefe8bf`  
		Last Modified: Wed, 18 Nov 2026 02:43:12 GMT  
		Size: 9.2 KB (9200 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-jre-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:6cad6fde000bc8d2ed89ee6a93cdaacaa137a2f20c76559f7035cb03d71ab47e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.5 MB (106468283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de5ed749cc4ac030e524aa36fc35ded91c61afc7f740aa7c9ab894e0b25d5638`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Wed, 18 Nov 2026 02:43:00 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:43:00 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:43:00 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.13.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 18 Nov 2026 02:43:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65e056d33cf013bd3d80f7f1b530a4cb1147ca4fc6c75c497c78224e6d11c1a9`  
		Last Modified: Wed, 18 Nov 2026 02:43:14 GMT  
		Size: 76.3 MB (76254246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:ea4ef58e449518d94406a75ccd38db2c44e0bd1da787672b8e42a3a63efb7ba0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f33dd84a8f58647c9f60e2969c84e1ed492b77570975dbeb1cf86bb2c68ef1bf`

```dockerfile
```

-	Layers:
	-	`sha256:8a985178840eaa1e2653af81196e3327036776933417a38702268d5d643ed2f0`  
		Last Modified: Wed, 18 Nov 2026 02:43:12 GMT  
		Size: 9.3 KB (9304 bytes)  
		MIME: application/vnd.in-toto+json
