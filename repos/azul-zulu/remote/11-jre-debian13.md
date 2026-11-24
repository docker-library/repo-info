## `azul-zulu:11-jre-debian13`

```console
$ docker pull azul-zulu@sha256:e4ac6b6a6e70b04125c856c6dcfa8c61ac049925bd08071248bd0e4920f65669
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-jre-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:3e1fab3da495f18d120cb686c391a49c1c84cfbad25faf62a5731a1059f40037
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.6 MB (96594607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee0c7ee85cce1df2428d9973cd33068c2936f9a19acff9961f54dc3d8afa7ea4`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:36:19 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 24 Nov 2026 04:36:19 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:36:19 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.33.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 24 Nov 2026 04:36:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8122c2cc22372a2ad62e40e4975a281d7dcae91fb564aa8f3535ff7027465dbe`  
		Last Modified: Tue, 24 Nov 2026 04:36:29 GMT  
		Size: 66.8 MB (66752425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:2d41502ed14fa8cea7714218aafc7270b54014ed7af97042d22cbadb4c891462
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e4bed65b0806877308e9efaba3faa499ac65fb4d508877cb5348b5721c37767`

```dockerfile
```

-	Layers:
	-	`sha256:bb68f0bdede4ba0f122eb1f8380122d33fde1576266cf8f10f784857867d71e6`  
		Last Modified: Tue, 24 Nov 2026 04:36:27 GMT  
		Size: 9.2 KB (9200 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-jre-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:24611dd885bcdcb60f10001f3c0f0eccf6c4819ac5e586900bd3071e65ee7b10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.8 MB (96765313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa5cefe889b191043f6372da2b6a5a5ffd6707292f172b99e2b031124c5e5a89`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:40:44 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 24 Nov 2026 04:40:44 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:40:44 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.33.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 24 Nov 2026 04:40:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbe0ba40323148cee21598356ef0a6781d63b2fa014ff6aea9797cd98fa63c7a`  
		Last Modified: Tue, 24 Nov 2026 04:40:55 GMT  
		Size: 66.6 MB (66567279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:f3a2adf2b70b9754b48e03fafed2d7a641c609eaf1bb2d00ed1b8661a6235df7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0223c78c439d513bb2d2e2f214889f2ae085986c9625100dad966134d980bf5`

```dockerfile
```

-	Layers:
	-	`sha256:4ce51ba552b5d3335c11cf247464b08f983bafc960b4426fb0b19f16d7f32a56`  
		Last Modified: Tue, 24 Nov 2026 04:40:53 GMT  
		Size: 9.3 KB (9304 bytes)  
		MIME: application/vnd.in-toto+json
