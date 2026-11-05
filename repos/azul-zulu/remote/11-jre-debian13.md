## `azul-zulu:11-jre-debian13`

```console
$ docker pull azul-zulu@sha256:5f0da3a3010add9da299a8fbd151ecabfa4a1925fadf6515b27faa07f9c04406
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-jre-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:e11e5107d11cb7ea52334d0126612f869e1092f9bf3f14432f1bdc66bb8af2a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.6 MB (96593588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:424e415c17779a83b6b19f25e2a87383bf6a3b9eda483e5e1dbcd4f3e51a64d3`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:34:38 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 07:34:38 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:34:38 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.33-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 05 Nov 2026 07:34:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:350bd0543105419a2542d5d6811d2c2b1bdd858bb0f6cd0772f6b4ec370b03c6`  
		Last Modified: Thu, 05 Nov 2026 07:34:48 GMT  
		Size: 66.7 MB (66737456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:259ab518d7624588491817ef82dc0dc25194ed6b43a7ae377a7bd2e4cb9801dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48e1b3c8935e90c3314b673f8b3ccb0516a15a21b92be2eb4fd9a3aa20577b4f`

```dockerfile
```

-	Layers:
	-	`sha256:4d44c121264fd15a61045450a3d5b41b5265afb952c942f8525e75fdaa1e0c54`  
		Last Modified: Thu, 05 Nov 2026 07:34:46 GMT  
		Size: 9.2 KB (9190 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-jre-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:f59ae4506026b03ae2163c6a222287260d3d497c6f18540b4f9dc78ad4ca4edb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.8 MB (96766564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4069ca37da686391c83f0bc5384662a5d73971f8d20595e739dedae10f2a4380`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:38:17 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 07:38:17 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:38:17 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.33-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 05 Nov 2026 07:38:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60b217820c1e6f1000a0e925c35ce994cf4c94eeee8ece30bb07a350f6d677a4`  
		Last Modified: Thu, 05 Nov 2026 07:38:28 GMT  
		Size: 66.6 MB (66552527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:005f1570f11846915e7e409c430e312acd80969fc84c1280499df9c09ccd7ef1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca492336596dc26ece88f9b02f2518ae4c45d2cec595c2b53ec01b78b3c9536c`

```dockerfile
```

-	Layers:
	-	`sha256:2527a30c64d822314923900b95d62e930b41557b78fb380bd5dbda21269f98c0`  
		Last Modified: Thu, 05 Nov 2026 07:38:26 GMT  
		Size: 9.3 KB (9294 bytes)  
		MIME: application/vnd.in-toto+json
