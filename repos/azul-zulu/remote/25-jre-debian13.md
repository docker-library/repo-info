## `azul-zulu:25-jre-debian13`

```console
$ docker pull azul-zulu@sha256:6726f353efff4fd180fbb2b42ccfbfaaf2b88542125f767c23727c60febc903d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-jre-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:59ce9cb17798c56aa85b5e758959c695b70d118fd5641b33bcda17587194f557
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.4 MB (120402909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e813141f470b69e5e26ff6533bb1be78d01d0f5d887888100a9d30a713a1ae0`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:43:43 GMT
ARG REPO_HOST=repos.azul.com
# Sat, 19 Sep 2026 00:43:43 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:43:43 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.4.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Sat, 19 Sep 2026 00:43:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d3904f15beaac1ecc54fe96408dbeec2ec906349d4323d0a8b740304d8936de`  
		Last Modified: Sat, 19 Sep 2026 00:43:56 GMT  
		Size: 90.6 MB (90572491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:94029882839d6e0bad953005182d111f34dc8bd98133be242294ee5923f18393
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce6c235b234b209fe5924c509d625e68bef5eefcd9dc3168317eb935a97f8b2f`

```dockerfile
```

-	Layers:
	-	`sha256:9b8cf6286a6095d13bac2c20ae5b12522b2100f4029e84a8deb92bb024f3e7f8`  
		Last Modified: Sat, 19 Sep 2026 00:43:53 GMT  
		Size: 9.2 KB (9197 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-jre-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:d8ea0d6b6ae6090d44075bbc5e558ac14d058f65355d2c4288d6596be211f110
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.3 MB (120347898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a88f3f0938ffa40e66f9a15bdd9341c5596e2dfb9f6687862df8a65ba2a07981`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:46:02 GMT
ARG REPO_HOST=repos.azul.com
# Sat, 19 Sep 2026 00:46:02 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:46:02 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.4.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Sat, 19 Sep 2026 00:46:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24eb472661ebb6c02fc521a6fcc92767624fd0bf4c53f881cc56f4c9561f597c`  
		Last Modified: Sat, 19 Sep 2026 00:46:16 GMT  
		Size: 90.2 MB (90158207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:60d143610f6f9154b11adf72d2e4aa6d07dcdc59d14ae9a05d95a4fb9db44031
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5788dd934db83f09307219121b23bf7248eea91f826de585adea77198963a37`

```dockerfile
```

-	Layers:
	-	`sha256:1c090f3abfb073cfa39114aab41e09798ac50fb1136daef8e5555b11afcda7c9`  
		Last Modified: Sat, 19 Sep 2026 00:46:13 GMT  
		Size: 9.3 KB (9301 bytes)  
		MIME: application/vnd.in-toto+json
