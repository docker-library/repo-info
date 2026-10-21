## `azul-zulu:17-headless-debian13`

```console
$ docker pull azul-zulu@sha256:a01acb6cd62282066c2a2305226851a951ec9be06068d101c5b132a3ef102900
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-headless-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:83bd85b1bbe36a65d478feedcc032bfddc7182a4dcc6fa9c4641f2bddd93e266
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.3 MB (179285458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42dbc2d41fe608cfbdd131ef57dd8e4417a56172195b37a14c51dbe5ae20230b`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:43:08 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 00:43:08 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:43:08 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.20.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 21 Oct 2026 00:43:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Wed, 21 Oct 2026 00:43:08 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e2854af0bb0a9208f9c2c86705b72cd5a469a8d97cbcf610f566a3a90a20eb3`  
		Last Modified: Wed, 21 Oct 2026 00:43:24 GMT  
		Size: 149.4 MB (149441879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:1f90ab9bcd6e917e10f670508acae4d108f7e6625bede69f66261a9ee6c1f8ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bf44c0a893d744d37855626a9aee4e9b3b7525a4d35e3715b119da9bbc6f32b`

```dockerfile
```

-	Layers:
	-	`sha256:a7874be00737e699f72904bc82a5d437836f859b05aea95fde9fa875a352f2ce`  
		Last Modified: Wed, 21 Oct 2026 00:43:20 GMT  
		Size: 9.3 KB (9307 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-headless-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:f54bd600953ff0ebf343718564cd196cad3139d77c69a0b17542130076fa2b15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.7 MB (179654677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9203fed22ffa3f188558c4a106947aac6b2307c41ec753b3f68e34dab3dff16`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:47:21 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 00:47:21 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:47:21 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.20.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 21 Oct 2026 00:47:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Wed, 21 Oct 2026 00:47:21 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:333383d3d3cf7b4983538e35465c8ee42f09755b67288add87c65f9ec1d595a9`  
		Last Modified: Wed, 21 Oct 2026 00:47:37 GMT  
		Size: 149.5 MB (149454199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:2cd88c87ce955176decb78d06f964c069428747bb1a153c4acadb32785664413
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eebd8ff93d81bd2c4c64adc4490ad442b46a8a46f148c97868fabc1f18814f45`

```dockerfile
```

-	Layers:
	-	`sha256:ed3931bbcd6ccb13cfb2a6b9faad361b4366b670183fa673a5fb918f31e804c2`  
		Last Modified: Wed, 21 Oct 2026 00:47:34 GMT  
		Size: 9.4 KB (9412 bytes)  
		MIME: application/vnd.in-toto+json
