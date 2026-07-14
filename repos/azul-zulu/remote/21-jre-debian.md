## `azul-zulu:21-jre-debian`

```console
$ docker pull azul-zulu@sha256:c84271c6d02bf1dc19ce8eb8f06031bf170026ad3173a30d58d69f876c729a85
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-jre-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:1d99e039b3266247e0a1cc4ce20352345707d99aa2a662eb7dd9257b79352899
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.7 MB (106677477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ce2d84dc34e275e62854fe88b4e1b92ab35c3ebe6546b633a3d03d93ff53046`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:42:07 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 14 Jul 2026 01:42:07 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:42:07 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.11-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 14 Jul 2026 01:42:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:776990777b6618ac27c0e341b6b2e0bd62aa38c1438ee79f57401bddb6b8b2e8`  
		Last Modified: Tue, 14 Jul 2026 01:42:19 GMT  
		Size: 76.9 MB (76896572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:b70d1ebab1defb03e16d6846cc7a74840d4b02aaf15f99109ca65381175cf542
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2faa5b193ce27514ecfec986ba3fda841680d17fbc02ca3c5c768e9d047ba055`

```dockerfile
```

-	Layers:
	-	`sha256:da8de625a43ac8058408d6084bce949ad457f68fb9529b926b69dd9c5e81f353`  
		Last Modified: Tue, 14 Jul 2026 01:42:17 GMT  
		Size: 9.2 KB (9189 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-jre-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:1c0e0a5406b2b10e6a100db89a03be037a4d7d1fdb282efaf237a9e257295fda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.7 MB (106692521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df235287794e6a34bed88814b604084c1c795035d5f14c6f53732259fc70ea55`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:45:13 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 14 Jul 2026 01:45:13 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:45:13 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.11-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 14 Jul 2026 01:45:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13c035f70a60d099d733811f647562124b8e46f8841da0384c3803d1efeaa0da`  
		Last Modified: Tue, 14 Jul 2026 01:45:26 GMT  
		Size: 76.5 MB (76548816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:4eaf232c5dc85cdbece151dd4a7ff9c26e3e8b9c1d7c71cc7bccb59c1c3e27c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1f31f72ec69d269998c61fa504e83fc150eba4794b6ca214fd24bdc3e373b14`

```dockerfile
```

-	Layers:
	-	`sha256:ed98faed7c1487a3a9525ef4420797cf5db761b0249391163d29f29f6f53c255`  
		Last Modified: Tue, 14 Jul 2026 01:45:24 GMT  
		Size: 9.3 KB (9294 bytes)  
		MIME: application/vnd.in-toto+json
