## `azul-zulu:21-headless`

```console
$ docker pull azul-zulu@sha256:e6e001627fc64dccafa581d09e782cb5658b5ecc64fd68df0c10a64effe849a2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-headless` - linux; amd64

```console
$ docker pull azul-zulu@sha256:b71f816551685d5676d4061d574cd73f26c1f89f146c298e770567cef9590577
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.6 MB (192592280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2d10ce4e712d2daa8b0cdc4ff7ee9062a0b20ba7fea7a6469ef62d292d9aeac`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:42:57 GMT
ARG REPO_HOST=repos.azul.com
# Sat, 19 Sep 2026 00:42:57 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:42:57 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.12.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Sat, 19 Sep 2026 00:42:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Sat, 19 Sep 2026 00:42:57 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78f9111660dde5784fc72872ff54ce13c00013faa2cebb8ddfa3d7d476caf051`  
		Last Modified: Sat, 19 Sep 2026 00:43:12 GMT  
		Size: 162.8 MB (162761862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:4fdc38f2aac5d2703b0df4d1ee60df524133ed404c4102d81589b1782741f8c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf79b6267a4f43a3e4deec9af80e2d213fdfdcc622ca07791d7e4d7457334cd3`

```dockerfile
```

-	Layers:
	-	`sha256:4d2f3b8458522b7549cffa2ba56bd1483daacb154d93b5db61254d6dd0c4ea3f`  
		Last Modified: Sat, 19 Sep 2026 00:43:08 GMT  
		Size: 9.3 KB (9305 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-headless` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:74b55253576680e68c6749c527b7eb312431429f06358167ca6561e029184fb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.2 MB (192243924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec49c1840bdc05688a42ba0381df36bd1e948ced5960ab3e871b627d2ca14db9`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:45:20 GMT
ARG REPO_HOST=repos.azul.com
# Sat, 19 Sep 2026 00:45:20 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:45:20 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.12.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Sat, 19 Sep 2026 00:45:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Sat, 19 Sep 2026 00:45:20 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:210384a948e46c75f2605df5433faed94b7cbfe2bab4539a3755af5311708c6c`  
		Last Modified: Sat, 19 Sep 2026 00:45:37 GMT  
		Size: 162.1 MB (162054233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:c3f7e3f15361b9d4b3d401d6a05ae4ada2306fdf25c8790f478de347647930c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd2ac8e7afe87801a462b635d0a28362bdfe869efdc0bd3fc9508a2c585ab58c`

```dockerfile
```

-	Layers:
	-	`sha256:5938ad8cb8429d3955868ee09d2f4edbcca1dd1ea677db80449da874319a9f57`  
		Last Modified: Sat, 19 Sep 2026 00:45:34 GMT  
		Size: 9.4 KB (9410 bytes)  
		MIME: application/vnd.in-toto+json
