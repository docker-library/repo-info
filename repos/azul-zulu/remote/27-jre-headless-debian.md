## `azul-zulu:27-jre-headless-debian`

```console
$ docker pull azul-zulu@sha256:b0c8e4aacd697289bf9b079e4ea789396715428024470bbb6f3b03bdad9bad95
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-jre-headless-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:6d6d8bf1746510ce8be9bc908c72bfef51ccfa48c71c767ec66d12a0ef0f1a42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.9 MB (118935775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b04fbd258b99aec843fa8a93da019e2f4dc15dbbd55394e88600f2855042451`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:39:10 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 24 Nov 2026 04:39:10 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:39:10 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu27-*\nPin: version 27.0.1.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu27-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 24 Nov 2026 04:39:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32be5801b50149b9f9ec4159b0f3546cc0eb65f970fed2d8f5358da69c1c9015`  
		Last Modified: Tue, 24 Nov 2026 04:39:23 GMT  
		Size: 89.1 MB (89093593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jre-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:1b214a62128ba6d64fee4a7e409a938272c50d7360fa88b0ee6f35999feca7af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59b03d3921540d30f81c1e234f511dee722a10e52167d5fdbc20788255d9f162`

```dockerfile
```

-	Layers:
	-	`sha256:a36dc760479be73c40be30b34df18cacc61ccebf240a4c8382fb6e0d3f5de287`  
		Last Modified: Tue, 24 Nov 2026 04:39:21 GMT  
		Size: 9.3 KB (9308 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-jre-headless-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:df9fefcabb17dbe58f3319bcce46b80a14c09f35aa508a65fbfafb04e074f8e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.2 MB (119206996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a4bccc2b4da1b9c325408ab4051f0011fcc4f85b4d6cf7337619db29d6c23fe`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:43:31 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 24 Nov 2026 04:43:31 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:43:31 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu27-*\nPin: version 27.0.1.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu27-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 24 Nov 2026 04:43:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4f6ecf47d18a7e6c62317ecedb82d7f86902e69f8f3295b9073e12731d4b1f5`  
		Last Modified: Tue, 24 Nov 2026 04:43:45 GMT  
		Size: 89.0 MB (89008962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jre-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:39e2328c04996e029368b7fd1df32c7da7ebfa8e9b2a95468f59acf53e44b3f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3a643dadad491befb00a40e6f1b4c79462b67ae6618990df6ba18a48005e0a1`

```dockerfile
```

-	Layers:
	-	`sha256:ca6e8e0346f1bcab4fa91caf288b5594127ac2386f0b994c43fcbdfdf50fda86`  
		Last Modified: Tue, 24 Nov 2026 04:43:43 GMT  
		Size: 9.4 KB (9411 bytes)  
		MIME: application/vnd.in-toto+json
