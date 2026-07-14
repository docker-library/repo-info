## `azul-zulu:26-jre-headless-debian`

```console
$ docker pull azul-zulu@sha256:d68936fa7dbe22632378c23dfba1dae79d1c340a8ffb758ffdde78b8c9874938
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:26-jre-headless-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:854ebe26e0eb3eafa6065f82779bc4962def541891351415090ebac714483d8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.9 MB (119913780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3058dec8f109d5319d175a93631e332cde82d38bbb66c10ae4450059adccbba`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:43:27 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 14 Jul 2026 01:43:27 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:43:27 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu26-*\nPin: version 26.0.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu26-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 14 Jul 2026 01:43:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b92b33b7e922e678c7f425197392173c76764db4729473e246a469a78666b4f`  
		Last Modified: Tue, 14 Jul 2026 01:43:41 GMT  
		Size: 90.1 MB (90132875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:ab07356c0251088438c14d184946b5ee2c91517e233383f20eee60e77cf98ce2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95c178a4a063ee3103d77f0678587a98a28534ed8d8a37fcc1c6aba174bcc04c`

```dockerfile
```

-	Layers:
	-	`sha256:6e6fb77aee7e9c44a58871871f8ca17b2baea279be7aeb76a9e095cdc8fdb433`  
		Last Modified: Tue, 14 Jul 2026 01:43:39 GMT  
		Size: 9.3 KB (9298 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:26-jre-headless-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:1a09ecec6530ae3acd81b61dd395886dd87a4575ce8f5010f3f5499931726dd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.2 MB (120203386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:689e5e2965d6792b8398c3a73ed8349b3a6acc5964c05f884bec89a2b13c7935`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:46:39 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 14 Jul 2026 01:46:39 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:46:39 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu26-*\nPin: version 26.0.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu26-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 14 Jul 2026 01:46:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68d41b383b673c39254c8d65fff22276c6c6873f16e26a1add2bcd172ee820d8`  
		Last Modified: Tue, 14 Jul 2026 01:46:53 GMT  
		Size: 90.1 MB (90059681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:7eedd05db2bba2b27e4a4cce51ae38c17506bd5aef38763421427262a57e56c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d84c4fd4f15bb77eaadd0fea067acd7388f9b0f39bd9b0938584fbf41c532c0`

```dockerfile
```

-	Layers:
	-	`sha256:04c556d6973b2139c14f5cb8e8495fb76e65c8c127fdad4980a29f008e257da8`  
		Last Modified: Tue, 14 Jul 2026 01:46:51 GMT  
		Size: 9.4 KB (9402 bytes)  
		MIME: application/vnd.in-toto+json
