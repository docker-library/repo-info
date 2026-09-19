## `azul-zulu:21-jre-headless-debian`

```console
$ docker pull azul-zulu@sha256:0204a1008fd98f8a47d8cb89f54daff89ebacb347b645ea1de7012e8a37965c1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-jre-headless-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:92558ec2aeb6ef7097e8deb68547c577a34da556bde3967e43df3258eaf082b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.2 MB (104185641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14078af905c497b14ce139e9a262ba390488377b9278839e5a2e98bc64e7652d`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:43:08 GMT
ARG REPO_HOST=repos.azul.com
# Sat, 19 Sep 2026 00:43:08 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:43:08 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.12.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Sat, 19 Sep 2026 00:43:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e96bbeb15fa08f4943bb5d6038516019490da79fb8fc56dcbde4221d28dea4a9`  
		Last Modified: Sat, 19 Sep 2026 00:43:19 GMT  
		Size: 74.4 MB (74355223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:6a2c09a7bce7966f13e2d2c193f77567c166f9a27af87e2a7d942b4caf2f730b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47ac7e6af953330f2c2fe5a2ed978474b27e74448132b58540ac8e748e854de9`

```dockerfile
```

-	Layers:
	-	`sha256:ad827621f2843d24a6769b137e28020cf1dcb91367a224d7d0cc2210c3bdcc22`  
		Last Modified: Sat, 19 Sep 2026 00:43:17 GMT  
		Size: 9.3 KB (9311 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-jre-headless-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:6b17cf48aaa408f26091e86ad0d6d6de43c793118e16b64c1f9eb7d8888e6b9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.2 MB (104194493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcf2a216424233e68f413d0f1584ffb910170676f1cabebbcefbf8bc27217120`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:45:22 GMT
ARG REPO_HOST=repos.azul.com
# Sat, 19 Sep 2026 00:45:22 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:45:22 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.12.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Sat, 19 Sep 2026 00:45:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ffff5a68a86d1a1b93684935e86911d8a2a6fe1d8976ca1c5fc941c6719b905`  
		Last Modified: Sat, 19 Sep 2026 00:45:35 GMT  
		Size: 74.0 MB (74004802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:06c19341e2f472578962222e4eff8ff213d7af58ed4c94e89c80890d42434af6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55d143590dad1dfcd296229c0fea7c73952369cccee2acd269f9338dfa4cacd9`

```dockerfile
```

-	Layers:
	-	`sha256:dc347f3bfa6badc6138e57c580407fdbe0263e22ff8cb488dffdcad003d8eb6f`  
		Last Modified: Sat, 19 Sep 2026 00:45:32 GMT  
		Size: 9.4 KB (9415 bytes)  
		MIME: application/vnd.in-toto+json
