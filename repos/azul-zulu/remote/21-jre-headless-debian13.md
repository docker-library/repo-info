## `azul-zulu:21-jre-headless-debian13`

```console
$ docker pull azul-zulu@sha256:f1bd1a2e88212a0636b77cfb5c35f01f17f6d9e1f13ef1471daf84bbb220f9bc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-jre-headless-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:78c0d160b5728848e7b0f91c2ba7aa483835e5466df68ee87ffe7596e333a458
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.4 MB (104374259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84a690dedaf766cf88488726eccb9f32484fec53276f4dc0c71ab3da3d67b666`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:36:36 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 07:36:36 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:36:36 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.13.0.3-5\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 05 Nov 2026 07:36:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af2faa6d8f16d2844c59e2382f8d185a97d44e016149cb03212efc393ebf1334`  
		Last Modified: Thu, 05 Nov 2026 07:36:48 GMT  
		Size: 74.5 MB (74518127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:d0ecd47eaea21d9c0d5873312028fc37330846f9327acbce2d762d98a7c2dcc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7025392c76c76c75c79e3054e3cd6a1f7b206355c9a3633ad5f82c178bd48472`

```dockerfile
```

-	Layers:
	-	`sha256:be5e9b4cd321286435aec1dd7c0dac591aa68fd2db4d59cd8760d0749a1be26a`  
		Last Modified: Thu, 05 Nov 2026 07:36:46 GMT  
		Size: 9.3 KB (9321 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-jre-headless-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:ee46f1ba3027e42e3e521efcaa01c2786bacb405443e44e6b163de0228f02a2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.4 MB (104389451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7d4b01223088d01e35bfbb0c38ab2dbd1a40ca3f0520921a107183cc82b475e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:40:19 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 07:40:19 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:40:19 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.13.0.3-5\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 05 Nov 2026 07:40:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78a5764801feb7923a5fa790f2afeaa5bc742ed83e2cce6d2212277399a9baaf`  
		Last Modified: Thu, 05 Nov 2026 07:40:32 GMT  
		Size: 74.2 MB (74175414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:829b1ccb926750cc8bbdb2a9142486bfacb94741d8353e723b5d1c3df3dbdc2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ff535d6c5ab65f1061449a1e7974ed78d7458604a855e4bb71d5d5b6e05ce42`

```dockerfile
```

-	Layers:
	-	`sha256:0d59e5960c9167aea4615273951e092bdadeea831d07e8994fbf85b9767fdccb`  
		Last Modified: Thu, 05 Nov 2026 07:40:30 GMT  
		Size: 9.4 KB (9425 bytes)  
		MIME: application/vnd.in-toto+json
