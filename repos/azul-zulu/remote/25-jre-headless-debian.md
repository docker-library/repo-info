## `azul-zulu:25-jre-headless-debian`

```console
$ docker pull azul-zulu@sha256:e5d630a3c25596178a09fb1f407f6b6bff64ca612995b5a863e42b3aebe74ce1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-jre-headless-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:6f7b0af29a9dc06debf1fe640ce333e1e2d582005b0372773eb148b975f02c6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.4 MB (118426019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df5b6861dc4c9cf0895a1616f43be4ade56c4fc3a48417c4ab8ad6c860562f46`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:38:39 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 28 Oct 2026 01:38:39 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 01:38:39 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.5-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 28 Oct 2026 01:38:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9b6aa4944e1caba149a3052ad845d12c5e33b7ab4a2b83d100b9e1b885a0e0f`  
		Last Modified: Wed, 28 Oct 2026 01:38:53 GMT  
		Size: 88.6 MB (88570783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:3d80027d73cfcfdd404f86b026f39353c33ff3328e88c13e1b403d889acdf9b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13c7f21396c1709d42444b57fedab02fbebc486856b640af328c015a96190d79`

```dockerfile
```

-	Layers:
	-	`sha256:a5f994b5d4662a0ff2cc385eb297f54d23692c07e4cce6bf14242dba03eb0a44`  
		Last Modified: Wed, 28 Oct 2026 01:38:51 GMT  
		Size: 9.3 KB (9298 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-jre-headless-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:b13fdc689e4dc7428b523e505aba83d9757a3307ee3ad38440269850b9d306dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.4 MB (118359566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f77c50060827c8eb99625c86238864bcbbfeaa04bf0c88d34f01dc699072d032`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:42:19 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 28 Oct 2026 01:42:19 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 01:42:19 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.5-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 28 Oct 2026 01:42:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d4b90fe871813d26f5b4806f437d872ef77550a0f4856226f4331f8999a3af3`  
		Last Modified: Wed, 28 Oct 2026 01:42:33 GMT  
		Size: 88.1 MB (88146070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:1315be2ac04d67a1bef9ba9e5c7baccd92bd8d311409dbce42749eec6e3cc2f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ecb19436a21b606bb26ecd7b1a4e4f570a5995ca0f12d9316ec6a4823cdd815`

```dockerfile
```

-	Layers:
	-	`sha256:a0a7d7e45040b38b3000eeb053321a82b38362ff4afa9bcde89bdea43c267c9a`  
		Last Modified: Wed, 28 Oct 2026 01:42:31 GMT  
		Size: 9.4 KB (9402 bytes)  
		MIME: application/vnd.in-toto+json
