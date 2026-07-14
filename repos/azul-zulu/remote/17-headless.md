## `azul-zulu:17-headless`

```console
$ docker pull azul-zulu@sha256:a4a8c10f7dfc294334720f0acf6f49412938e9b44554ec7e38aff8f93cf59ef8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-headless` - linux; amd64

```console
$ docker pull azul-zulu@sha256:04ef968f336e775f6de7a52ccea7aa29b948c9713b3ccaed0e39ab0a59296683
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.3 MB (180298529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dce9cc2f6111308ce25d0050072d14332c5592843a602fed5a0bd597ffa7908e`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:41:24 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 14 Jul 2026 01:41:24 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:41:24 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.19-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 14 Jul 2026 01:41:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Tue, 14 Jul 2026 01:41:24 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d24a3cdf6f7d00c007e9be8cf5278f2a03d52c4a77aa76bf49d370ab8454453`  
		Last Modified: Tue, 14 Jul 2026 01:41:40 GMT  
		Size: 150.5 MB (150517624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:51a62186cb4593fcc8e3142ad437eb4a8298d05c60f2e1e189f709f0ee9860ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77fd6fb93b04218d39c21c74fb3e79acab5262fb5b67a27c9fddde8726129570`

```dockerfile
```

-	Layers:
	-	`sha256:e0a143b1adda9ff0c01130d6682e009b97877cb8dbfe2f767dd610e99b13e092`  
		Last Modified: Tue, 14 Jul 2026 01:41:36 GMT  
		Size: 9.3 KB (9298 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-headless` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:5b9c4f2f078e3e019907d6d08c957330d64ea3ddf7d0feca9f5df1d79244f670
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.7 MB (180702135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ae17b660fecf62c0be81e3c674864a357873b6ed4d055016fb7ef6694c8d481`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:44:32 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 14 Jul 2026 01:44:32 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:44:32 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.19-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 14 Jul 2026 01:44:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Tue, 14 Jul 2026 01:44:32 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1890c296f8f62e7a953fe96049f2a900c62778108cbb8ae6239a6e515199029b`  
		Last Modified: Tue, 14 Jul 2026 01:44:47 GMT  
		Size: 150.6 MB (150558430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:8d88fcdebbde3c20175b9ff062bc882076803e2b56cbc77e2a8ad6bcbd21ab6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b62af4e75b15825d976a77d1970532ae84e07612f3ff4964cb345e5ff7420826`

```dockerfile
```

-	Layers:
	-	`sha256:5fedc4dcbf515bcae1267a006a9b49ab6908be012761825dd8a12aa254bc3e95`  
		Last Modified: Tue, 14 Jul 2026 01:44:44 GMT  
		Size: 9.4 KB (9402 bytes)  
		MIME: application/vnd.in-toto+json
