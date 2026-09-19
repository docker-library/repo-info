## `azul-zulu:11-jre-debian13`

```console
$ docker pull azul-zulu@sha256:023dee3b8ca81823859ad86bd6ab003c7db0c45ddb13972cee0712b2c269642c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-jre-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:70b1c7e9317832a6172cda5aa4fbf54cf42de062e3f909f814626353dd4b67f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.5 MB (96533656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74d761c18674bbb74c77761f4702facc98e02d2f391a6157fbb2bc46ca069a33`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:41:34 GMT
ARG REPO_HOST=repos.azul.com
# Sat, 19 Sep 2026 00:41:34 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:41:34 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.32.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Sat, 19 Sep 2026 00:41:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed3f9baaec628784d6d4e8b5db2df2789cd53365d1638fdb24bc25e26a5fbea1`  
		Last Modified: Sat, 19 Sep 2026 00:41:45 GMT  
		Size: 66.7 MB (66703238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:138a3fb0d81d11cb12dbf1f35e17bb8237c7a4c3f578e422ffa212331de3d39c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00adef88c6db62aaa6649ff91d01aee1e7fcd6f1244ed3887e554a8defeb3286`

```dockerfile
```

-	Layers:
	-	`sha256:218a2d5d987753a33c6e6e3acc1ae66fd119a390c0268a32191e254ac7fb6966`  
		Last Modified: Sat, 19 Sep 2026 00:41:43 GMT  
		Size: 9.2 KB (9199 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-jre-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:8774d5c480361bb8ed57782812a59eb81fc4ac21944dd5177a2c5e8655746753
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.7 MB (96691203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d461d4acb137e73452c2940097e995e653028c251fc0c8ac5479c24c7bb15a13`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:43:51 GMT
ARG REPO_HOST=repos.azul.com
# Sat, 19 Sep 2026 00:43:51 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:43:51 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.32.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Sat, 19 Sep 2026 00:43:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d021e3d4080f6e36ccc1afd4700b87f0d7f1c2f24c29d3fa65c4612e74a8d87e`  
		Last Modified: Sat, 19 Sep 2026 00:44:01 GMT  
		Size: 66.5 MB (66501512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:18bfea576085ee549b312f7838a8b487f498b930c604d3a542394f71b86c4a41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e6dc07617c16127e5056efe7fc128eea24e35bd37808a4fc621707284b55813`

```dockerfile
```

-	Layers:
	-	`sha256:e6ab8444cde85ec93b11ba332ec9847c0b5b8d644805e998f6398fc5d5cf5fc6`  
		Last Modified: Sat, 19 Sep 2026 00:44:00 GMT  
		Size: 9.3 KB (9303 bytes)  
		MIME: application/vnd.in-toto+json
