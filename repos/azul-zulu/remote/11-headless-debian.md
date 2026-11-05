## `azul-zulu:11-headless-debian`

```console
$ docker pull azul-zulu@sha256:7b217ccf036619fc037e19567e1b08eecf29b1d0dc7833c92e4515be277f5fb1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-headless-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:fc794536b27454f0f4b9c3744b213a24d76e0f09110dd93df2e05633692db7f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.2 MB (175159516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fffbbbdd44354eb3eff2385e9136d2bbb9750e10ab9effd161417bdec421503`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:34:38 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 07:34:38 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:34:38 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.33-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 05 Nov 2026 07:34:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Thu, 05 Nov 2026 07:34:38 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82e82fb673f58f0a92a39de2efc3bc2d7edeedde70d6d52ac7ab16ce7d127bf5`  
		Last Modified: Thu, 05 Nov 2026 07:34:52 GMT  
		Size: 145.3 MB (145303384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:eb3242ce5f3d985a6a885bf204f4327e8b4a453c0538e782b7523aaac06e9bd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77695f33ac10870ef8ca6c01aeb782320ad79383a07292597b6b1c482074a259`

```dockerfile
```

-	Layers:
	-	`sha256:78c056c708971fcab6924c1be8cab1e44e6dbd6c35d4d294981c91e23503c5ad`  
		Last Modified: Thu, 05 Nov 2026 07:34:49 GMT  
		Size: 9.3 KB (9297 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-headless-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:06c1509dda3d5b2034f8b201ff0f1a5b7a6f06207368301a2b9bcc77f15332f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.2 MB (175205192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f81fba70196b3842d4785eb09726ddd92ac74af3a52283a3e4f2599e3a0b380`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:38:16 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 07:38:16 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:38:16 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.33-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 05 Nov 2026 07:38:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Thu, 05 Nov 2026 07:38:16 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5dc2db780d5a513b68ff2a2db27b817b86de7a1f3a9951342ffce0828161316`  
		Last Modified: Thu, 05 Nov 2026 07:38:31 GMT  
		Size: 145.0 MB (144991155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:6f879a3a04bf0fbd6d1dc2aa110b5dc2712c3bce0913cd1804a8749c5afbae32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0db7b332aca7cf1dcf619900567d2efa67d4fd821add08a7efc3c486bdd4c4b`

```dockerfile
```

-	Layers:
	-	`sha256:dd3be7c316646338428d12d321c77eb0011995eb0ffe913d26d896750ed822cb`  
		Last Modified: Thu, 05 Nov 2026 07:38:27 GMT  
		Size: 9.4 KB (9402 bytes)  
		MIME: application/vnd.in-toto+json
