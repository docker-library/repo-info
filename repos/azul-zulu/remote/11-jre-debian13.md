## `azul-zulu:11-jre-debian13`

```console
$ docker pull azul-zulu@sha256:bd0a81694116b6177a7e135aedf3ab201f0b369fbf6f7d642b2b8c61cf3e29ae
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-jre-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:af27437fbd78225b093f4f45e79f0cce53bc6cefb6aa717baf3025a22e542829
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.5 MB (96483051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d39d9f87df0d9c59d2dd8d45517c9ea283c8c3c07082799152ef34117005e7f8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:41:33 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 05 Aug 2026 00:41:33 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:41:33 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.32-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 05 Aug 2026 00:41:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46df5b6638380412d40b2788e7c292988fdf002489611b42cd2bd0a50b75e137`  
		Last Modified: Wed, 05 Aug 2026 00:41:43 GMT  
		Size: 66.7 MB (66702286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:9d3e31f32f342fad2503e0902801a07e451cf9230593d7f2a41b8c31746d65d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:209e7a23ebe1c8f1042dcd49441b64cf546feeb7e99fa8b945109244ee55d754`

```dockerfile
```

-	Layers:
	-	`sha256:efa6476d13e745e128e0122781456014eebefd3c05d330ae60b75345baa39e94`  
		Last Modified: Wed, 05 Aug 2026 00:41:41 GMT  
		Size: 9.2 KB (9190 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-jre-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:93ce180ec6dcfdebe582290270b7918ebb9abd9f926abaaaed8758128f15d7d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.6 MB (96641177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9468643c7a6c8f837e7ea24adf71e7b852e4d53e6f771d8537851152ba0eda2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:44:26 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 05 Aug 2026 00:44:26 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:44:26 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.32-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 05 Aug 2026 00:44:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:028b6f1f4e057e7e021c4e690a8845dd05e524f2cced5be8f34145d70b65c127`  
		Last Modified: Wed, 05 Aug 2026 00:44:37 GMT  
		Size: 66.5 MB (66497568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:c20a55e50ac83fd6ffe3966c5ec4ad444ee00629cc3b3dcc61b80d54b0c4e315
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dec904d98034908b7007344e876dc9c80adf40920363e526e0ad3240e0e45b11`

```dockerfile
```

-	Layers:
	-	`sha256:c1d0da41508dbf5a1c216c375eaab151205bbbbd89d2046e1a0a1b12286376e5`  
		Last Modified: Wed, 05 Aug 2026 00:44:35 GMT  
		Size: 9.3 KB (9294 bytes)  
		MIME: application/vnd.in-toto+json
