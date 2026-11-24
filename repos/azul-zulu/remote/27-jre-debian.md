## `azul-zulu:27-jre-debian`

```console
$ docker pull azul-zulu@sha256:e71316312d2f2a41c4be2c5bd652a8999d7388cba3d970780d83b91b0028de26
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-jre-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:b36ab6a0092e7242d0f86a03ed6e2a659e774d7427f578048b90f710e727a864
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.9 MB (120939708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8eadb1df8170584593f4f38a1ebaf57c930a0d2013d22af2c30079decaf2595c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:39:02 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 24 Nov 2026 04:39:02 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:39:02 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu27-*\nPin: version 27.0.1.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu27-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 24 Nov 2026 04:39:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7e6f9c13ea189f2fc3b79e95fd3132e76e0d33a83cb6a7fe757792152b87486`  
		Last Modified: Tue, 24 Nov 2026 04:39:16 GMT  
		Size: 91.1 MB (91097526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jre-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:111d29d1526b0a00c358df16aaf54b3b8833ac6ca241b02bf9ac9c6860d14b9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d17085e1c16ed0cb641f7e3a624f5589ffadf07de7c5f9a9dc4d9b20aa212fe8`

```dockerfile
```

-	Layers:
	-	`sha256:eb1b62c8ed9a0a59ed5b3c8ab5c0d6e13d1cf58e8674491e939778e4d16ce2b7`  
		Last Modified: Tue, 24 Nov 2026 04:39:13 GMT  
		Size: 9.2 KB (9197 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-jre-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:594e20be05e866fb4807b73e4f9979d5b4ccf1523cde8057564ebf0e74b533b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.2 MB (121192915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5aacd593334ae72c8bc92378defa1c6a27389b5e89db2d888b55f3d5e6d19f3a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:43:28 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 24 Nov 2026 04:43:28 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:43:28 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu27-*\nPin: version 27.0.1.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu27-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 24 Nov 2026 04:43:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b8e935a25a87d6383c7d5ee310ef59234300d2346a6c3783b766b5dbef29266`  
		Last Modified: Tue, 24 Nov 2026 04:43:42 GMT  
		Size: 91.0 MB (90994881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jre-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:46a4281fb7e173bc9f7720cb8687c57bb3b7d479bbd912cfdf71df69a631a1b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0c1ba0adf895c20b53fe0db7a15ea4bf89dafc152c34afe316f85679cc5aa74`

```dockerfile
```

-	Layers:
	-	`sha256:ecb354e4bc8fbd94ff407cdf1b9a550fe6037a6a6675871696d03f2f4f4ba305`  
		Last Modified: Tue, 24 Nov 2026 04:43:40 GMT  
		Size: 9.3 KB (9301 bytes)  
		MIME: application/vnd.in-toto+json
