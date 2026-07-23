## `azul-zulu:8-jdk`

```console
$ docker pull azul-zulu@sha256:77106f25e0c41c3d1272dd756fe677d96339c9b63c713b1af9a5acee9baf8087
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-jdk` - linux; amd64

```console
$ docker pull azul-zulu@sha256:7394f8b186542906700bdfe0b7bf7116a7a4645f52a48f742687a6bd504e773a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.3 MB (91268355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5101bec6427f055d241f00dd7a672686b2e2d800a764f16c477056c0679de622`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Thu, 23 Jul 2026 22:28:16 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:28:16 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:28:16 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.502-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 23 Jul 2026 22:28:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37172272c183276b5cd8942e7a1cd3a58e059ddf4163fe04e415367448c679a3`  
		Last Modified: Thu, 23 Jul 2026 22:28:26 GMT  
		Size: 61.5 MB (61487450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jdk` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:8fa0d8d4a21d65b12238c543c0940932b9de1530b4dd93f1d57778a965704ee9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31820c82470c83ea640aa08f017c684fb4afb791734df55811582f86ffbd5d2d`

```dockerfile
```

-	Layers:
	-	`sha256:0a07863023750c9501e3c54d658b5998e470458b192407d10b4ee8df060f75ee`  
		Last Modified: Thu, 23 Jul 2026 22:28:24 GMT  
		Size: 9.5 KB (9468 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-jdk` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:33415a1443f6c8ccde845c68096a563f25cc5e3909b9c033fda05852e7bf89a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.0 MB (91952005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:baa0c4bc7139aee6e370a4846d96bd62c0af590fb7ce13e97727209930ceb93b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Thu, 23 Jul 2026 22:29:11 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:29:11 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:29:11 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.502-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 23 Jul 2026 22:29:11 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d12576d1f2cf4db201359ff39f1e214ba866709b61410f9b9b21ba64570c24c`  
		Last Modified: Thu, 23 Jul 2026 22:29:21 GMT  
		Size: 61.8 MB (61808300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jdk` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:6f732574294349f994f96501c1398ebb03fb5c1c4c0acf6fe7629467944ffa92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d12f3ef37e1f71319989c8ae1046c22022de22117e35037f77ba1e93853824e5`

```dockerfile
```

-	Layers:
	-	`sha256:8da95df5c94b7c211a5961e381a7b75a9ab985eb98152a8942f2419c10b629d9`  
		Last Modified: Thu, 23 Jul 2026 22:29:19 GMT  
		Size: 9.6 KB (9583 bytes)  
		MIME: application/vnd.in-toto+json
