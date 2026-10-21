## `azul-zulu:11-jre-debian13`

```console
$ docker pull azul-zulu@sha256:ce92ace3730c99df76ab4df4aa6794d8a9080cfc6fd3846ef57fb92635f083b5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-jre-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:e362ea925c9252ed95528ae62382cb0c438c6deabdd70f17925c17633571b839
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.5 MB (96547656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75a1f7a3f8a47fdaf60b0592726b2a3fe909a471b264ead700020c165951a94a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:42:28 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 00:42:28 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:42:28 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.32.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 21 Oct 2026 00:42:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:717e0873d01d1ad806cbd9de11baab084348367c9029fdd9cf1033356fb10124`  
		Last Modified: Wed, 21 Oct 2026 00:42:39 GMT  
		Size: 66.7 MB (66704077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:f8420c10693446665fb79256635a27763b557c7cbcfa9a6f328415511f9e90ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcfbb9e1900473290366cb64dbf8a6f67b67bde5f1531d3680c3581caa1959fd`

```dockerfile
```

-	Layers:
	-	`sha256:eb624858848fe52d085a47a01529693b4b5ed5fd87b26b743cc886b1827792bf`  
		Last Modified: Wed, 21 Oct 2026 00:42:37 GMT  
		Size: 9.2 KB (9200 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-jre-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:b50dec60da6af3839fb79000df4a24b071060b51cb3336495109e7ea79c95aae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.7 MB (96697897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2b6cd909d5ee54514eabb15fca8f36bcb8cce0ce41c1bc0337f2f6c565cac6b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:46:10 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 00:46:10 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:46:10 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.32.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 21 Oct 2026 00:46:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbcf123d69d26cd2ec3fa628dd8306c66b68f20d2aee888252ae6dee17574685`  
		Last Modified: Wed, 21 Oct 2026 00:46:21 GMT  
		Size: 66.5 MB (66497419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:d79bf978ac8e8c02c3836cabcbcfb9bab455aa1263a0ff2229c70a41a43911ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:014297b802f46826d686e0a13968598a32bc1eee6615719228ef7e1044151fe6`

```dockerfile
```

-	Layers:
	-	`sha256:74c9731d0829f341a11a1339d4b8a90dfc27faef3405cd7ecd405abd97e36eb2`  
		Last Modified: Wed, 21 Oct 2026 00:46:20 GMT  
		Size: 9.3 KB (9304 bytes)  
		MIME: application/vnd.in-toto+json
