## `azul-zulu:26-jre-headless`

```console
$ docker pull azul-zulu@sha256:723463ffe1933f6f1c4ebb686163098f605940348dceabff047d23385eb1e9fe
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:26-jre-headless` - linux; amd64

```console
$ docker pull azul-zulu@sha256:5144862cb133955933071ce42261dfdfd678c7d744782d78d5dd1c99f4e97852
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.0 MB (120011400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8d54f740fa01cf7c840a9e23a56a181b336da274fe366e7f85abbd1940ee0bc`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:40:44 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 06 Oct 2026 01:40:44 GMT
ENV LANG=C.UTF-8
# Tue, 06 Oct 2026 01:40:44 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu26-*\nPin: version 26.0.2.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu26-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 06 Oct 2026 01:40:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca77b3d6793c8cc384f9208771e89149d76e95bf9915c106aa61effff08791af`  
		Last Modified: Tue, 06 Oct 2026 01:40:57 GMT  
		Size: 90.2 MB (90168050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:20095a4afc2e5d2ad861989ccdd4a1cf50ce7b6fcbfbb048a1207b7402170f17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02baa5153367bc54e467ef4b651cb3d579e53de907d85527aaa25154313c5419`

```dockerfile
```

-	Layers:
	-	`sha256:44f8424fd18ed85eccd53369a196095e2109054db5af60dbd3a3b92a34ceeebe`  
		Last Modified: Tue, 06 Oct 2026 01:40:55 GMT  
		Size: 9.3 KB (9308 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:26-jre-headless` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:f7d968004db90cb33e481f9c937e9996849b285604246e2f6ddc8beb260c1bbf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.3 MB (120299532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ddf59f0bc53ae8bebb741299160ac4a0c620f56f5d0a2628a5eb51df87443fe`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:43:56 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 06 Oct 2026 01:43:56 GMT
ENV LANG=C.UTF-8
# Tue, 06 Oct 2026 01:43:56 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu26-*\nPin: version 26.0.2.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu26-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 06 Oct 2026 01:43:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b28d78800932773d5af53c5112b9d41183bcbb04310bda6f21f400beb2d5e2e2`  
		Last Modified: Tue, 06 Oct 2026 01:44:10 GMT  
		Size: 90.1 MB (90099250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:b28a725abe99bec97f8fe8558401865abc602aeaf0aff318d77fb2b6a02f750b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc1b41f972136fb7dd82819b8fdafbfceccfccb78e727da26f46fbc6d2e97289`

```dockerfile
```

-	Layers:
	-	`sha256:40e5c5e015e3c6d2404f56f40fb8350f9e5dd5a41fc88787ecb8bbc16b63f8c8`  
		Last Modified: Tue, 06 Oct 2026 01:44:08 GMT  
		Size: 9.4 KB (9412 bytes)  
		MIME: application/vnd.in-toto+json
