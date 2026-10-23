## `azul-zulu:25-jre-headless-debian`

```console
$ docker pull azul-zulu@sha256:747d89c3bf6006ff883fcec865386544d325d4acedb879f6fd43ddb718117e43
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-jre-headless-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:fb29b5dd6baaa5a54c4981b2203a48a360ca64784d1b38a86bfa48b498338a76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.4 MB (118414263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a889b6f09fabe61d5a8225fe21ce29720f6503f935ec607b30971a1fb563bc70`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Fri, 23 Oct 2026 20:03:01 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:03:01 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:03:01 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.5-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Fri, 23 Oct 2026 20:03:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06e223e539bc31a651f0ca6fa7ab0e18b82a33ca7e0f28e013e1b07b9aedef4e`  
		Last Modified: Fri, 23 Oct 2026 20:03:13 GMT  
		Size: 88.6 MB (88570684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:7ed20217c14acc7eb040764f33518ea9ec884e27461995fd8ac5ab5b3de46d5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cec4610052b5365bbae06f1cd4eedc1ac64d4b1a96b6429293e47be5a6255744`

```dockerfile
```

-	Layers:
	-	`sha256:afcde60b99f410dbaa4c8e901aad1513ab47b953fceed8327ca2e4f6dec0b6eb`  
		Last Modified: Fri, 23 Oct 2026 20:03:11 GMT  
		Size: 9.3 KB (9298 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-jre-headless-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:8953c3e789efe825adfd608c6bb68885c87b333b49ae5271c47aecbd180d072b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.3 MB (118346009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d24559f6a3d6a0b087b9914271220662938c66066775dfaeb2d7d3e4d8a70238`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Fri, 23 Oct 2026 20:05:06 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:05:06 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:05:06 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.5-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Fri, 23 Oct 2026 20:05:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbcdd44ef4619254284221a67f666d0b74d5090548033e80c0af8a920d9384d0`  
		Last Modified: Fri, 23 Oct 2026 20:05:20 GMT  
		Size: 88.1 MB (88145531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:f5e2f9ba7043262a423567abf10590042d37e3dea50a6a8556a22422594f80d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41c65df73426b20b9581d103dd430011dc26f61ecbfd92084ef9373332d577de`

```dockerfile
```

-	Layers:
	-	`sha256:5418b250be46055c0bc849a49450d3c55e44b8f3c4b5ef176bb2d06ad291aa5c`  
		Last Modified: Fri, 23 Oct 2026 20:05:17 GMT  
		Size: 9.4 KB (9402 bytes)  
		MIME: application/vnd.in-toto+json
