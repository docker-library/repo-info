## `azul-zulu:11-jdk`

```console
$ docker pull azul-zulu@sha256:addc2f0d3bea5e908cda603b3bbd7736ede8b4404b806f7897887dba5461ee65
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-jdk` - linux; amd64

```console
$ docker pull azul-zulu@sha256:9e5751150551c25b9e9d084098651e1a78df05d9488cfa6eb7f7f59935281ab8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.6 MB (177579141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99e935abcad5ad90643c32d614af2193db329dc8efa00f1633c2bcf55209a7ec`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Wed, 18 Nov 2026 02:41:47 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:41:47 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:41:47 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.33.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 18 Nov 2026 02:41:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Wed, 18 Nov 2026 02:41:47 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c8ed509387b46ef3a536df7a6503782b559424da565d98e5d48c75a857bf81d`  
		Last Modified: Wed, 18 Nov 2026 02:42:01 GMT  
		Size: 147.7 MB (147723009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jdk` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:ba6e3adb898b0adf08725582818a98c97860f6634c55748c85d6dcb91ba4706a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cd0120ba1c2ad37b4645cf5354d78dbdb38d46cf835874cd07a232e153e9484`

```dockerfile
```

-	Layers:
	-	`sha256:5c55894371fb35be5036351bd3b41de0ce3b3fa609c9dec838189d0a4e4e7ea5`  
		Last Modified: Wed, 18 Nov 2026 02:41:58 GMT  
		Size: 9.5 KB (9517 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-jdk` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:6268d1368002200e1c569ed74fcd34ef4d5f10a3d0ea2010ee62a4f01375df1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.6 MB (177609414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1b437980be784312e2aa30fa867bfa1b00cd7a862391afedc588ff25761f50b`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Wed, 18 Nov 2026 02:41:39 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:41:39 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:41:39 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.33.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 18 Nov 2026 02:41:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Wed, 18 Nov 2026 02:41:39 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c9cb8924b810917d714fb63c64331ee634072cfab594e3723d02db61061a18a`  
		Last Modified: Wed, 18 Nov 2026 02:41:54 GMT  
		Size: 147.4 MB (147395377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jdk` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:614c2360c7908040d097546eca4a9a55fa274e0e5d888cd61af971484b9ef635
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c772be5bc72770a471e68b09154387a8454caefd220222d3431bed1392ac8843`

```dockerfile
```

-	Layers:
	-	`sha256:df9f0a2f6b510a5b39f2e3d56f14f9c8b210d51a5f8c4693717717c4ed6b81ea`  
		Last Modified: Wed, 18 Nov 2026 02:41:51 GMT  
		Size: 9.6 KB (9633 bytes)  
		MIME: application/vnd.in-toto+json
