## `azul-zulu:11-jre-debian13`

```console
$ docker pull azul-zulu@sha256:32f9c3e31568b3bf99897fce706a4a37d555852446a49d3152a85267a94bf5d8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-jre-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:49e89c696395819ce748abb938d752a7ba9e409782b773630178afc73917e2b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.9 MB (96899583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3fabd4d2931662fd0c73e9f2b2064a6a7a4142bc2a29bf8fa90e16dd3615463`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:40:47 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 14 Jul 2026 01:40:47 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:40:47 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.31-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 14 Jul 2026 01:40:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc5c51c345a436d3c83a8e20ab0a9f0d83eea9a244d4628683f9d6440d7e9b13`  
		Last Modified: Tue, 14 Jul 2026 01:40:59 GMT  
		Size: 67.1 MB (67118678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:590f5de3785aafe019e6d58515a9b536579aaa636f5ef26c99dc85d8cb65ba9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:365ee6973e2f19bd8ac25277199b8c91cd2ba2c3e90c3bc967d121bfd16fe56b`

```dockerfile
```

-	Layers:
	-	`sha256:b0a6df8b4ec2164092db42939d4e6ad35e1a4f4b50b30c15be56d326334b6fc2`  
		Last Modified: Tue, 14 Jul 2026 01:40:56 GMT  
		Size: 9.2 KB (9190 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-jre-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:799109ec44ec7896d07e571eea3a27368b1cc922b849f415ffc3459c6f41ae65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.1 MB (97068412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ec6e55a4c11991ce83794514acbe5cc21f20b37231a91cee0964a74ffeff2b3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:43:53 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 14 Jul 2026 01:43:53 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:43:53 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.31-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 14 Jul 2026 01:43:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7977fc0a796c2dbd7eab583781cce2033e63bd300ba811d725856711426661ec`  
		Last Modified: Tue, 14 Jul 2026 01:44:04 GMT  
		Size: 66.9 MB (66924707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:93d4ad98c47c9919f3bfb7aaf4f282b70188cb82632c959e1fda5e754276c4c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cec7e52ed4263803c136e6094e9febdb7bcc5a293d365bdbab88f19626bfbff`

```dockerfile
```

-	Layers:
	-	`sha256:9dbd629f0fa9febffcd4de4f486ba8764bc49df3e28197af0a82811e2413b4a1`  
		Last Modified: Tue, 14 Jul 2026 01:44:02 GMT  
		Size: 9.3 KB (9294 bytes)  
		MIME: application/vnd.in-toto+json
