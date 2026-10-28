## `azul-zulu:27-headless-debian13`

```console
$ docker pull azul-zulu@sha256:d014c8b101fa816c3fa506ccbbee211307c4d9c933fdbc2b25c457c9751fecff
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-headless-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:893ea87348a31bf7e51e37d51bd84045f13327ecb06bd185d796c26ac2ddcd58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.3 MB (213259146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28aa19f484a24e964c362a5aca9aca97b4a6ebd285df6765afc6b31abbdc2199`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:39:19 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 28 Oct 2026 01:39:19 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 01:39:19 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu27-*\nPin: version 27.0.1-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu27-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 28 Oct 2026 01:39:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Wed, 28 Oct 2026 01:39:19 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1cab37fc60c156a90aac765c630cb1b6485614e20ae7fd873201e122876fdff`  
		Last Modified: Wed, 28 Oct 2026 01:39:37 GMT  
		Size: 183.4 MB (183403910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:5febddcc456d54a059c67c16aea1b9b95f87e51803c578f9ef1e076bb5065f8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7b591dd9ea8841b019dd5412af5d9075afb6d4008bb4ad3d9a7d8df7e283018`

```dockerfile
```

-	Layers:
	-	`sha256:948b08502459145ad3f5b92281d908980fb54869f009b1eea0ee4d0bf5bc78cd`  
		Last Modified: Wed, 28 Oct 2026 01:39:32 GMT  
		Size: 9.3 KB (9295 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-headless-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:1e3cd39e0a7c56a13565bbfe45c4d5b04734dd275acc071eb9ba741fb4e0fc10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.3 MB (213304866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26a14be5e39f46fd0677bc3455efec79b891b18e2e26da5702dc462a1a6517b7`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:43:03 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 28 Oct 2026 01:43:03 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 01:43:03 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu27-*\nPin: version 27.0.1-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu27-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 28 Oct 2026 01:43:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Wed, 28 Oct 2026 01:43:03 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:827c03560cd956660f263b69b479e7ee66fcf45e73362f5b2f63ba04f88bc3d0`  
		Last Modified: Wed, 28 Oct 2026 01:43:22 GMT  
		Size: 183.1 MB (183091370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:8d3fe6e941d194cc663d1ac9773d0bb62339eed0f23faf97adc2d75cb4338573
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7fa083cf3fb42b67abc63ede949a8ab02bd0c97f1e9e35abe59221aaec17685`

```dockerfile
```

-	Layers:
	-	`sha256:7c50924c31e02b12e98a83768e38184cab25e7cf87e34e938fb8ee9f735544a9`  
		Last Modified: Wed, 28 Oct 2026 01:43:18 GMT  
		Size: 9.4 KB (9399 bytes)  
		MIME: application/vnd.in-toto+json
