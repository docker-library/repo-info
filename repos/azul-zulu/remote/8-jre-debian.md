## `azul-zulu:8-jre-debian`

```console
$ docker pull azul-zulu@sha256:fd749379e39276fc72f8fd8296cd22035744a7d848b67fa084a76b820fc98a77
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-jre-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:6a685e32476ccdf867e07ebd9dc661b84bfb7bbd8a19403901f770d219ca48a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.1 MB (79077556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7ed8d3b678850194d5232d40a1be7dde55acb6d65bd2fb96fe83adb47aa002b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:46:47 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 25 Aug 2026 00:46:47 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:46:47 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.504-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 25 Aug 2026 00:46:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5237a3baea93c2f3bd634e967e896cf614e769b4a374defd80fa6a97e6176124`  
		Last Modified: Tue, 25 Aug 2026 00:46:55 GMT  
		Size: 49.3 MB (49284898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:f1b70a9fc38632e862d7e2d1e05ec192d5d2b0c825bf67be3640926ebfe920ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6cc0612e46125ad780c9c89a7d4964574df0b218d6f01b14e321ecaae4e3f71`

```dockerfile
```

-	Layers:
	-	`sha256:4f49b99c8a2072ed1cb14527e0d16ccb8652074302506bacaf3f091ce8c656aa`  
		Last Modified: Tue, 25 Aug 2026 00:46:54 GMT  
		Size: 9.2 KB (9174 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-jre-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:3d8cbdcb2f3c031aade5a81feed842dfe171ee54f939628b0ca56b4274082fbf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.7 MB (79670047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7141d1b1e700cef9faa1d62f92f58e6666c04fb7497a497d5064352c27ad3092`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:48:54 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 25 Aug 2026 00:48:54 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:48:54 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.504-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 25 Aug 2026 00:48:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b14c69e42fd0c23ff9cbd3cbaa1b2ed5e3428778967d62ab9691f7716e642b5`  
		Last Modified: Tue, 25 Aug 2026 00:49:03 GMT  
		Size: 49.5 MB (49510465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:122205a35e24ae62f8e6070d69a178f43abb0cc0e646dd3e840b81c80fbcfb0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7b2c5c2f3578b6cd9c1c09e7c41c6b2c7055941b5722b86b3653a446ad6ed6f`

```dockerfile
```

-	Layers:
	-	`sha256:9d99bc8f47ce41402c6b86b85461b023fc48ffaa47757cd23ca801ab0e67d5c3`  
		Last Modified: Tue, 25 Aug 2026 00:49:01 GMT  
		Size: 9.3 KB (9278 bytes)  
		MIME: application/vnd.in-toto+json
