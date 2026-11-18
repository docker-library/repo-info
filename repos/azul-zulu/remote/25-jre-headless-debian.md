## `azul-zulu:25-jre-headless-debian`

```console
$ docker pull azul-zulu@sha256:2c111cd7a9c0608c694d7e6b8c992c8e38091b80aaecef61e9629e54619a56ff
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-jre-headless-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:d4570500b4c021dd1d7c44a0cc3f76551f2a923df618339566bfcc585daa78bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.4 MB (118429196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c201dc2637822610f979fba085e50906df83573039ae503063f6b8b4834fb1ff`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Wed, 18 Nov 2026 02:43:40 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:43:40 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:43:40 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.5.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 18 Nov 2026 02:43:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d90e74543c70c70113a0d595168388e75ec5c9feba9071bca68a46ff0233e16d`  
		Last Modified: Wed, 18 Nov 2026 02:43:54 GMT  
		Size: 88.6 MB (88573064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:f258b519afd37645c27a945733247dd0e3ef0eafc8f14b7ab14eef10092db248
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9b9c36390822b7181b01d662b8353dff66f29873acb93d5d444bde99d4fe1f7`

```dockerfile
```

-	Layers:
	-	`sha256:9986d132455f3e218406f794c10a014328c1ce39bdc2fe83a9e0e78c23f8204e`  
		Last Modified: Wed, 18 Nov 2026 02:43:52 GMT  
		Size: 9.3 KB (9308 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-jre-headless-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:605757cfeede6963c581f839e5b93d407cf3be2e98cdeb29b6632e2887f0b1f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.4 MB (118377935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7b47358fe49b8a2f36292501a38bb3681eaebf124dc01fe32aa538d59239dd7`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Wed, 18 Nov 2026 02:43:42 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:43:42 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:43:42 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.5.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 18 Nov 2026 02:43:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11994abe0232c953db8445195d598dd6529db56be998698602133a80d0c9b3ea`  
		Last Modified: Wed, 18 Nov 2026 02:43:56 GMT  
		Size: 88.2 MB (88163898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:b3a5ec7b168887064d88d345a9ee3a10f84e9b08a9c6b69a835f31c2f0558cf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12ff6f61f7953e34ca9b3575dd707cbff72c26e79ce9ff0e45304dde865d797b`

```dockerfile
```

-	Layers:
	-	`sha256:25999e42b55cf43b932a31a8d0db880db5aa8ec18902b2dbf046d13e04be0aee`  
		Last Modified: Wed, 18 Nov 2026 02:43:54 GMT  
		Size: 9.4 KB (9412 bytes)  
		MIME: application/vnd.in-toto+json
