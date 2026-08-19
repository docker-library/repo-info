## `azul-zulu:25-jdk-debian`

```console
$ docker pull azul-zulu@sha256:f095ad16f19e4956fe5d04174291366a0847a5c399046ab30fa34c2a74247a6e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-jdk-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:e7e56db0a6106af19a7da7002a9463e93ec8f69e8ec0152a969654c3fb2b0061
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.9 MB (213916920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c02a78a865b9df44dcd441ae5b0bd9cb1a8d5499cb091e24c7b8674233f7a71`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 19 Aug 2026 17:37:13 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:37:13 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:37:13 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.4.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 19 Aug 2026 17:37:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Wed, 19 Aug 2026 17:37:13 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c348585ed1146c1cfd555b457fe8ad031f88343190bcb5713f9d5d265760d81e`  
		Last Modified: Wed, 19 Aug 2026 17:37:31 GMT  
		Size: 184.1 MB (184136155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jdk-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:f20bec422a6b35813dace30b48cdedcd6ea781d49ac39b8563e11f0fb872afa1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a4eb329bad4d9c874d60897481a36458e4dd12d9aaf4b44bd493a6f293e17cd`

```dockerfile
```

-	Layers:
	-	`sha256:ed9d7b884b5dc2b8b357f015d28f5ae86d115490f3d8b17d92a8227b17e786a8`  
		Last Modified: Wed, 19 Aug 2026 17:37:27 GMT  
		Size: 9.5 KB (9510 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-jdk-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:d5f733e0c025c7204999c3f10463c91c14abca78f19b0940ee4229685de3a10d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.4 MB (213388162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79754f67b7ae4947a813078b0f2196a223edaa3a4551652ac9bc16c4e83efa35`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 19 Aug 2026 17:37:28 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:37:28 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:37:28 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.4.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 19 Aug 2026 17:37:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Wed, 19 Aug 2026 17:37:28 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fd1652b948e57cff32b7504cd2e7b0ddeed3159e611fafd657d1c1b649c3747`  
		Last Modified: Wed, 19 Aug 2026 17:37:48 GMT  
		Size: 183.2 MB (183244553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jdk-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:e7fab782be8797d2bb3ac45ded33d051012dc562a3be37818c474c97b4a67bfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:481fa2328e7b98c6f8dc6cb6c8ccec1e3a7faaf6737c36834800e577758d125d`

```dockerfile
```

-	Layers:
	-	`sha256:072b3f51502ac80009cd95b8aaabc64a18d7115f4d88cdcdef159e6643072386`  
		Last Modified: Wed, 19 Aug 2026 17:37:44 GMT  
		Size: 9.6 KB (9625 bytes)  
		MIME: application/vnd.in-toto+json
