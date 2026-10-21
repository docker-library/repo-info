## `azul-zulu:25-headless-debian13`

```console
$ docker pull azul-zulu@sha256:fa6caf9bef2fb8cdbcd5487ff0c8344f20acf33810bce4fd906132f3c93e0255
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-headless-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:3c6e752f0c06a1cae7a15c4dd5b1d3cab5e059b0fc6636df47bfd28448931fa0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.7 MB (211700009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f38a206985ac8ef526e2753c60780ad756de924ef4b63869bdf71086a616b4ba`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:44:49 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 00:44:49 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:44:49 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.4.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 21 Oct 2026 00:44:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Wed, 21 Oct 2026 00:44:49 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e34e0676d1d3aefb9a7cec4aee40c7d85750af529012070658310ee39a74c2d8`  
		Last Modified: Wed, 21 Oct 2026 00:45:05 GMT  
		Size: 181.9 MB (181856430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:44693c3dbe7c27b3227edd46c3f47880fecf46682fa33dfe0b02940eb98c011b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a28edc7041b78533af40c28a5bcd208bbda98a31e78cbb55790d347c5a4e56a9`

```dockerfile
```

-	Layers:
	-	`sha256:b9d5af4bdbca7c307e78e65c1ea2d7e044915c9c995d3f11a4780c1107778baf`  
		Last Modified: Wed, 21 Oct 2026 00:45:02 GMT  
		Size: 9.3 KB (9301 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-headless-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:2f4e3dffe79ae97e219fdb17484fac474f115eaa3e280209f38e0e05c41d98a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.2 MB (211190484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccb6bfe6cd2beaa4973c01815339feff406a9376c08ef5c9c71dfac2ea5538a8`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:48:31 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 00:48:31 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:48:31 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.4.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 21 Oct 2026 00:48:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Wed, 21 Oct 2026 00:48:31 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2debc2d1dafd017836be2c6e5575c8689cdc376925b2f414d7e5d9c5a569a89b`  
		Last Modified: Wed, 21 Oct 2026 00:48:49 GMT  
		Size: 181.0 MB (180990006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:26cce0b22d61808e867cef9d7bb3caa9c02b24b388f6724f1ec5b28accb02691
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dec19d76abf1d943508a9063a3d75c9ee95cee18e192db727155d724e9983d24`

```dockerfile
```

-	Layers:
	-	`sha256:26b2640bff5ae68559f2ecd05e1749f9518e7cf3d3a0b8599a50dd7e509b950f`  
		Last Modified: Wed, 21 Oct 2026 00:48:45 GMT  
		Size: 9.4 KB (9405 bytes)  
		MIME: application/vnd.in-toto+json
