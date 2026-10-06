## `azul-zulu:21-jdk-debian`

```console
$ docker pull azul-zulu@sha256:546691cde4bc816be67e5e915f49a161346e19d62d28898b7fba7b3e3eea0992
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-jdk-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:be88f8369472132b5b9faa22b31ef3c258351ba6298a0fc5c7fb7a244afdb2ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.9 MB (194880251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90ead884d8244094a95502e89a199bc940674523770bc1ec144806a0881d6cbb`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:39:05 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 06 Oct 2026 01:39:05 GMT
ENV LANG=C.UTF-8
# Tue, 06 Oct 2026 01:39:05 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.12.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 06 Oct 2026 01:39:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Tue, 06 Oct 2026 01:39:05 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82df0f7de94cbd55fc684ece8c7432c91327a177795192acd0e90633870287d5`  
		Last Modified: Tue, 06 Oct 2026 01:39:20 GMT  
		Size: 165.0 MB (165036901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jdk-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:05a5162b713e9dba10741f817481e21674af8f79fe506217934b548e7b933de0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af268f288f21f037ef6e3aa6ff9f28b8cbd985a1837f6f52896b1c0b9667af70`

```dockerfile
```

-	Layers:
	-	`sha256:101f7b4cdbc9dd03de6125646585d5777b9c3d74d74d06f7c4b1f13fdacf76cc`  
		Last Modified: Tue, 06 Oct 2026 01:39:17 GMT  
		Size: 9.5 KB (9517 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-jdk-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:07b38debe07b57a6b6824d7a286ecb7ff1c5db7b0239724677f5375759f00012
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.5 MB (194517306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c6234fe09cb498f5343b640b3dcd101a94ac1678fb741f8b2c7f42780c11929`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:42:18 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 06 Oct 2026 01:42:18 GMT
ENV LANG=C.UTF-8
# Tue, 06 Oct 2026 01:42:18 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.12.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 06 Oct 2026 01:42:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Tue, 06 Oct 2026 01:42:18 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acb53dbef7f1c76c048126e762db05f41dff854ab8b3a5664faf38888597120a`  
		Last Modified: Tue, 06 Oct 2026 01:42:35 GMT  
		Size: 164.3 MB (164317024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jdk-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:f57225a693f195ad9e30e2fa0495ae8deb44f0b9f18cc6ea4afab5236010869e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b66f6748743081479a741cfa00ec4abc968d5fa7bb5a6298284a8e387c922831`

```dockerfile
```

-	Layers:
	-	`sha256:ad163357e7b01207a737348e79cc1d441db33c143b5c35703243889eff734e23`  
		Last Modified: Tue, 06 Oct 2026 01:42:31 GMT  
		Size: 9.6 KB (9632 bytes)  
		MIME: application/vnd.in-toto+json
