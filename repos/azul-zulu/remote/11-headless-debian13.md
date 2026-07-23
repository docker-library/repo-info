## `azul-zulu:11-headless-debian13`

```console
$ docker pull azul-zulu@sha256:43344a24902bcf729eb09317b22cb26298970b9b7755fc7e69eac41025ee7d40
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-headless-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:8d5e0d090b79e2cd5d380db178cb9a1d2572926338297a963b5c72de1adecf29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.0 MB (174982029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc79d9e8c8f19eca0da73d681d81b4b1f1c9e28f7f3885a8e5740433f7ddd853`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Thu, 23 Jul 2026 22:28:59 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:28:59 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:28:59 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.32-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 23 Jul 2026 22:28:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Thu, 23 Jul 2026 22:28:59 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:745e30054dbe93f96b06e7f541ec853a79696e83bcbd0b9f68c070ef1222d695`  
		Last Modified: Thu, 23 Jul 2026 22:29:14 GMT  
		Size: 145.2 MB (145201124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:7c7dd4e88b0969ae163b24c653c53f042e0db663bebe5abb40e4d82925ac7564
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71c7375fbda1a29377585532c572f6a10e5f92d0378d9eaba3e5a36d9e2a994f`

```dockerfile
```

-	Layers:
	-	`sha256:99f7cb8255cd982756a6f1bdfb974ef4398eab5188091c56a7061c72d7f1aa12`  
		Last Modified: Thu, 23 Jul 2026 22:29:10 GMT  
		Size: 9.3 KB (9298 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-headless-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:b68fbee1bb66dc67ee1b523e68df0943cd56bf01c16cfdb57aecb591445ad0ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.0 MB (175030000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a7df676fb1c44e722575f93c0fd877780b35a092753e5be5a09387c87b7b353`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Thu, 23 Jul 2026 22:29:54 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:29:54 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:29:54 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.32-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 23 Jul 2026 22:29:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Thu, 23 Jul 2026 22:29:54 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4314060fc400b9820de7452d8da11f2c6efa7f0df15e2c11622b6db3c6f3fbb`  
		Last Modified: Thu, 23 Jul 2026 22:30:10 GMT  
		Size: 144.9 MB (144886295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:f90bef9155b91dfb7a4852eb0811d32c1299d7676c13f969c6b88e3da86047ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1208112072bc2f08a0fc207c30ef3421abedb058a1dc0e4bfb9eebb730d86b3`

```dockerfile
```

-	Layers:
	-	`sha256:580ca66a45b77a97d7ecb2e61f6befd3981ae07caa9d2aad0699cb216e125cdd`  
		Last Modified: Thu, 23 Jul 2026 22:30:06 GMT  
		Size: 9.4 KB (9402 bytes)  
		MIME: application/vnd.in-toto+json
