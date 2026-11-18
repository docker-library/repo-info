## `azul-zulu:17-jdk`

```console
$ docker pull azul-zulu@sha256:8d6ef9577c512c6c1ba23347e9753117c69afc9462f9f42975537117ceca6ea5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-jdk` - linux; amd64

```console
$ docker pull azul-zulu@sha256:7ecae4ce5dc6b5a3dd6a447bcb0185338304a4e322e7e0922579839e9f9fdeb3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.9 MB (181910862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b9f66eb77bc359faed5e3bb3dbc8a06e563ddbe905e39cd23ae559d42d5953b`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Wed, 18 Nov 2026 02:42:26 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:42:26 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:42:26 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.21.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 18 Nov 2026 02:42:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Wed, 18 Nov 2026 02:42:26 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a912bd64de0efee5a5d55d001fab7fb7765646dcd60f58e88406d0941168a6d`  
		Last Modified: Wed, 18 Nov 2026 02:42:42 GMT  
		Size: 152.1 MB (152054730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jdk` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:8177c579f194bbaef7d9199321d1de49fa680865ef1232b917e26bcde02879e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:578f23ba59272e6ce5d01ff6be1fe1cda442a03aa5802d7d22565916b96f271a`

```dockerfile
```

-	Layers:
	-	`sha256:62931de7a04a9cb85bfd901e1bbcee5df76bae300ebf18ae4b5ad3d3ac4b1977`  
		Last Modified: Wed, 18 Nov 2026 02:42:39 GMT  
		Size: 9.5 KB (9516 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-jdk` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:1c1b0235b3097c92c91522148de91911e5156681ae6ba93ef2f1c3274c9b5438
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.3 MB (182334241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d26be1e44543be45779f63c5a04c6efb19afb7acd42e504d63590ad8e59ae3ed`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Wed, 18 Nov 2026 02:42:20 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:42:20 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:42:20 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.21.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 18 Nov 2026 02:42:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Wed, 18 Nov 2026 02:42:20 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50fa3a3dadc2d0f599eba35692d0ab9ad08fa44d8049266a16a0cfbeceb06f28`  
		Last Modified: Wed, 18 Nov 2026 02:42:36 GMT  
		Size: 152.1 MB (152120204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jdk` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:d13044950e936f5a196a2df7573a2d28c6cefbe288bcc034157638cde5346e98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2bf195dd288a07b8d82eb974570717f07bc6e223cc22955e314d3bfdae54413`

```dockerfile
```

-	Layers:
	-	`sha256:c65c2ae8bd259ebc7c89a6e17b374fde461dab70b9e9a1970d45d4f7bd35e712`  
		Last Modified: Wed, 18 Nov 2026 02:42:33 GMT  
		Size: 9.6 KB (9633 bytes)  
		MIME: application/vnd.in-toto+json
