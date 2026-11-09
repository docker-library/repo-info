## `azul-zulu:11-jre-debian13`

```console
$ docker pull azul-zulu@sha256:96b9a257845b2a8d745c52f0082b565e1ab3280626f6a43419364a3f29ea9d0c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-jre-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:e304f2d37d1bc06185afcde3f8d7cf178a38c96a7eba3c6ea44ae6189d7a95d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.6 MB (96587978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e219da1926f223f4800ff81a369b443fc93f7bcce73b7c13cd3df36c673af450`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Mon, 09 Nov 2026 20:24:05 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 09 Nov 2026 20:24:05 GMT
ENV LANG=C.UTF-8
# Mon, 09 Nov 2026 20:24:05 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.33-5\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Mon, 09 Nov 2026 20:24:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c761746aa9fd9c83d03ee6a8f8ab9443a61981c53d5154659257387eecb91126`  
		Last Modified: Mon, 09 Nov 2026 20:24:15 GMT  
		Size: 66.7 MB (66731846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:c62efd00d1660d80cfb8445ee9cabe0994d57d1afbe809d5548400b01d4904f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c07682ed3db0d3ccabe7cfd142aa354506d9ca51f93bb89154bb8d283d9380d4`

```dockerfile
```

-	Layers:
	-	`sha256:09f8ecfe267501f822c96e7d53f3e269772060cf1334777c963275fb0ec3a7bb`  
		Last Modified: Mon, 09 Nov 2026 20:24:14 GMT  
		Size: 9.2 KB (9190 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-jre-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:7345eca76be86d8d37644670e8b93beaa6957f739353498074bee1ef38b16808
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.8 MB (96766186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:394ab8d6ddd1886cefb96babf28c4f8a9cd34d723f689b6f8d24ff8cabba6129`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Mon, 09 Nov 2026 20:25:31 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 09 Nov 2026 20:25:31 GMT
ENV LANG=C.UTF-8
# Mon, 09 Nov 2026 20:25:31 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.33-5\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Mon, 09 Nov 2026 20:25:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b06faaadc83af2a5aa281eae3d7951a7ded4f3cf62e5b606a4abe014895c34a`  
		Last Modified: Mon, 09 Nov 2026 20:25:48 GMT  
		Size: 66.6 MB (66552149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:750727c7dcb624ecccd3e497a2728c7233bce0b7abcb6872a259291134b3be9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0494bb8ad3899a5e194038b14ffa546ea74a4084a8d36c2ce3c7b3cc60d18d95`

```dockerfile
```

-	Layers:
	-	`sha256:cfd9194f0493510dcae233b695288a4d751f3441f1001c67d3dfa944c7c50493`  
		Last Modified: Mon, 09 Nov 2026 20:25:41 GMT  
		Size: 9.3 KB (9294 bytes)  
		MIME: application/vnd.in-toto+json
