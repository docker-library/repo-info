## `azul-zulu:25-jre-debian13`

```console
$ docker pull azul-zulu@sha256:26b8e01378db15bd0fe92c7e71622e21602449f9a661c5b0466bc58384446fc8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-jre-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:8719eba6980f5552ce65cd136adb63355c243170e2550a51f7c689d78c4550a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.5 MB (120477317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a171f5c6f711e27dafe868b577d078eb25ab126bfc2f8ac568c396edf52f4155`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:38:18 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 24 Nov 2026 04:38:18 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:38:18 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.5.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 24 Nov 2026 04:38:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61b1ec3552e4722e5186b74d3ae56fe1ea3845b4c0176709b47379c894467c6a`  
		Last Modified: Tue, 24 Nov 2026 04:38:30 GMT  
		Size: 90.6 MB (90635135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:43cd7f6fd26e0a1873c25655c5fa9a10fba1c08d42984d4d27314ad17911dda4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b2f471875040a398dba5d58851dae4d4b00efb9087f6384de5dae6b532b7012`

```dockerfile
```

-	Layers:
	-	`sha256:dbd8ad9b37fdb95557d05c2618fef4862f2b99fc929f4261d69d30a36afd1f7a`  
		Last Modified: Tue, 24 Nov 2026 04:38:28 GMT  
		Size: 9.2 KB (9196 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-jre-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:095752a524d625459f3b69a0a4ebd8ba0a9505dc7670ddce1e055ac802efae43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.4 MB (120400955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1529e86588459aa52335b68833dc3e4349b0c87f6b3420cc7cad15580a06f36f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:42:41 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 24 Nov 2026 04:42:41 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:42:41 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.5.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 24 Nov 2026 04:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:825fdb801e3a0b2daffb387f184551bde27d9d5b7240ba189f73a3d8ad31f920`  
		Last Modified: Tue, 24 Nov 2026 04:42:56 GMT  
		Size: 90.2 MB (90202921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:461a920ff3826f7b4686a932ec1f799e6e417e8798a7aa63779df1e421ae8cea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eee1fb7c169ffb73f213a592fd9142c64eb896fec03bb5faf0f5d38eb26ee105`

```dockerfile
```

-	Layers:
	-	`sha256:4376dab9555b0fef3c67640c7777863fed2d9bb5dddf3b904711febc5fb207c0`  
		Last Modified: Tue, 24 Nov 2026 04:42:52 GMT  
		Size: 9.3 KB (9300 bytes)  
		MIME: application/vnd.in-toto+json
