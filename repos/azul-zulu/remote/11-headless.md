## `azul-zulu:11-headless`

```console
$ docker pull azul-zulu@sha256:1bcf086dab54a6d079eb6099714f374c264163a7463f681ddb8aa0b534ce9777
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-headless` - linux; amd64

```console
$ docker pull azul-zulu@sha256:56fa27f74880b28d51de621d268ce3112d94a79fc1b6dfe799bb774fd6f87850
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.0 MB (175981539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c40e7d8b77c88a27fcebc27001ba8561d423bf8bad74a7a5447352835dfe6d3`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:40:46 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 14 Jul 2026 01:40:46 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:40:46 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.31-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 14 Jul 2026 01:40:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Tue, 14 Jul 2026 01:40:46 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e61758847f1b2137e20a7c26c7fce7d657580630bbedde17e5888fb8132fad3b`  
		Last Modified: Tue, 14 Jul 2026 01:41:01 GMT  
		Size: 146.2 MB (146200634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:6c365df3ab961f82c2bd3c15963cde283b31eace26a66a5998c8d3253a59f3fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c07d8ca6c590a8df7a920d4045c6072e71ef90939b1d1c9c55227a402488bc6`

```dockerfile
```

-	Layers:
	-	`sha256:a2aeec6cd4554b6be7e2ac6b9fdf779703b1b0f8397044dc3d93487ec044df64`  
		Last Modified: Tue, 14 Jul 2026 01:40:57 GMT  
		Size: 9.3 KB (9298 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-headless` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:2bb56fdc559b1aa9ad1b25b43ed83dd52fa1a1210cb4b39d766d2029c19d218e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.1 MB (176054727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c3acd95d581a3a9a6a5974b08915dbc8388229ecb50edef1b19185b1b3c1f5a`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:43:59 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 14 Jul 2026 01:43:59 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:43:59 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.31-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 14 Jul 2026 01:43:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Tue, 14 Jul 2026 01:43:59 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7eefe7143eb4cd75d613225733175ee7cd9cabe7711536184290b8e8f6503b0`  
		Last Modified: Tue, 14 Jul 2026 01:44:15 GMT  
		Size: 145.9 MB (145911022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:0c35aa7ddaf7097aa14026fe3d9e89b9b007d54d61ae31dd79a51bf8fd3e7167
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84101b8c311d43bf890c71f81fe44f3c5850042daa89ca18593ba25d8c702b62`

```dockerfile
```

-	Layers:
	-	`sha256:3a804d1e17d451eec8727f73262cff53d7b8eb34608c6dccd163731d4d4b6b61`  
		Last Modified: Tue, 14 Jul 2026 01:44:11 GMT  
		Size: 9.4 KB (9401 bytes)  
		MIME: application/vnd.in-toto+json
