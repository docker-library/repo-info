## `azul-zulu:8-headless-debian13`

```console
$ docker pull azul-zulu@sha256:ff089a8b6cf901c846c7e7309bff7c0ab2dde624f9d0096403307deabc86eb91
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-headless-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:65651ffb8af45050b3e73fbfbaa9d5db5aa5c882001ece413ebd2cea7280b4d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.9 MB (88929435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0849bd1a12942823dfe0edf9d0b1c6babb8f757b2c4267e202695699459cfaa`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:39:40 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 14 Jul 2026 01:39:40 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:39:40 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.492-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 14 Jul 2026 01:39:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91c5bebc8f4370e4ebcade5e0ac944d5630704a378a628278e9eecdf06c9532e`  
		Last Modified: Tue, 14 Jul 2026 01:39:50 GMT  
		Size: 59.1 MB (59148530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:fbc99aaf8613aeb687330001a10436ba2b8c9144300d67b954adf53c33d3d0dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:742d05e56207fd84bd5bf41abde299833a6c0b7b16b354bb42644bc7b49f7edb`

```dockerfile
```

-	Layers:
	-	`sha256:7ed7c53e35f8b07e8dd14829add0f10f8a1b91a84e469a71d47d31d8fcb60f1b`  
		Last Modified: Tue, 14 Jul 2026 01:39:48 GMT  
		Size: 9.3 KB (9260 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-headless-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:487c4a8c005b97b7521fe008308a9224a55786db610766541cd742999eb2965d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.6 MB (89621966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3de48c3a27bc1fe65384a49f3b292bfcc53335443443f0c50210bf0581382f3b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:42:47 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 14 Jul 2026 01:42:47 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:42:47 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.492-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 14 Jul 2026 01:42:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37d3366895209005bb0eee42504349b712b8a4ccc1e80f4f3567737ec3d524ee`  
		Last Modified: Tue, 14 Jul 2026 01:42:57 GMT  
		Size: 59.5 MB (59478261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:aa3afe6cc8094cb90ff4dce63700d6983e00923ba8dcc7c3ac72f71cbc81f141
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2508cab4edef66a24a046d1c6273d95044b156cd1551abfeda6c795ec1961a46`

```dockerfile
```

-	Layers:
	-	`sha256:04951f028cf71d92b735dc6163e74b6f338fd815e447ccc4f4118ce27acbc985`  
		Last Modified: Tue, 14 Jul 2026 01:42:55 GMT  
		Size: 9.4 KB (9365 bytes)  
		MIME: application/vnd.in-toto+json
