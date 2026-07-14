## `azul-zulu:21-headless`

```console
$ docker pull azul-zulu@sha256:59ba36ccca6a21e894c85742eff77fcf0b5430276f5f72e63cae54c0f25b6f4f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-headless` - linux; amd64

```console
$ docker pull azul-zulu@sha256:4c8c9026f3310d054921f22723865fe2f76f422beb91f8b790a72801e90b2dff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.6 MB (193617455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:127e01997ee5466e29348f4d1243ca91b1a3e043bb512439feefa095b6eb74f1`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:42:02 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 14 Jul 2026 01:42:02 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:42:02 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.11-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 14 Jul 2026 01:42:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Tue, 14 Jul 2026 01:42:02 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:925e77e09f4dffe26661009e3343ebe753caf2d1a9f25fb402ae94cb91ff2f46`  
		Last Modified: Tue, 14 Jul 2026 01:42:18 GMT  
		Size: 163.8 MB (163836550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:3a73296bc6aa9c6a90e18a9d29dcd783787371ebb3d7a37fc886022dacb6d537
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3e46d95750298fa9888c4fea7d432662b8c55887e7d0b2b7b21189cc15de2ab`

```dockerfile
```

-	Layers:
	-	`sha256:14cafe96d9d8594e016a8f039615b4736a666366f0d8699aeaa9581d6d86cbef`  
		Last Modified: Tue, 14 Jul 2026 01:42:14 GMT  
		Size: 9.3 KB (9297 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-headless` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:1ea80a6f85e111b693f75fe8201c0c6ca2e3608960d84da710f3a475541f4201
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.3 MB (193292450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a25440dfa7852e3d50d910c0b61f0f16b90ee268275acbe14438992136d2bbc`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:45:13 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 14 Jul 2026 01:45:13 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:45:13 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.11-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 14 Jul 2026 01:45:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Tue, 14 Jul 2026 01:45:13 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5201366282ae8fcc12f73644fabfae1b61a555a5219b3799f8c57ff06336d2e`  
		Last Modified: Tue, 14 Jul 2026 01:45:30 GMT  
		Size: 163.1 MB (163148745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:f4a6f4ac00275c7e105dffc14cca61152221150bbc07f6973a05e35f422022ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90c188e3b2f68d756832665b63a12dca39ef46faa31e3c23cc47534240b626cc`

```dockerfile
```

-	Layers:
	-	`sha256:b8889208a8c59957aaf3cf9c5ef4731b80af7a8858cd6765cc6a1e9b9dc666dc`  
		Last Modified: Tue, 14 Jul 2026 01:45:26 GMT  
		Size: 9.4 KB (9402 bytes)  
		MIME: application/vnd.in-toto+json
