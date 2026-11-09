## `azul-zulu:8-jre`

```console
$ docker pull azul-zulu@sha256:4f405e4edcb921d4ed88b41dd2f2e1698dcc24a8a96b36b06d4c8c32cc6f5278
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-jre` - linux; amd64

```console
$ docker pull azul-zulu@sha256:8426a61d0fe88d4d5fdb76d543831e4c84cf8ae32c704a6269b0565cd0593934
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.2 MB (79163804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaac3cb433f3237c7f1a90303a314e37063f0c3c696202af7af60e1056d3e5ee`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Mon, 09 Nov 2026 20:21:08 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 09 Nov 2026 20:21:08 GMT
ENV LANG=C.UTF-8
# Mon, 09 Nov 2026 20:21:08 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.512-5\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Mon, 09 Nov 2026 20:21:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:666ccd2e4579de4d840bb864162e468bf8da4cc943718845800b3ccc40db11a7`  
		Last Modified: Mon, 09 Nov 2026 20:21:16 GMT  
		Size: 49.3 MB (49307672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:a1c90fe723bcad60dac7ddb32d8734628b128fed050a41bd9496d7d47eef97c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de89f91d15dfdcbacefb79eace29a3b6b837aa74875661b7fc62f00c1c59987c`

```dockerfile
```

-	Layers:
	-	`sha256:7ae6efb071e6361332abe56347298a2663ea5dee6be83f5aa998d6a35c8333d4`  
		Last Modified: Mon, 09 Nov 2026 20:21:14 GMT  
		Size: 9.2 KB (9174 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-jre` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:a7ec0f4cb42781a4012e349327c15842cdb0f92856da8f0b9d0b2778b46c70d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.8 MB (79753360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10058e724b9a3c6ee46628435d3a6712f8e063e8810066cba44dbd9b2869bc95`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Mon, 09 Nov 2026 20:22:39 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 09 Nov 2026 20:22:39 GMT
ENV LANG=C.UTF-8
# Mon, 09 Nov 2026 20:22:39 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.512-5\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Mon, 09 Nov 2026 20:22:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a13b3bf24e2e8d788c3a604e34645561c3e3b393b98145816a11c32c135d27c`  
		Last Modified: Mon, 09 Nov 2026 20:22:48 GMT  
		Size: 49.5 MB (49539323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:ea73c650674d522f0df8690671bff98ce4fe83ab0d33fca63c49d55dc15c7f40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70274d51cab6601296481623b965f92dac2a0f5572fbf00fddad20aaa941d081`

```dockerfile
```

-	Layers:
	-	`sha256:92ad58839e0df5ba945be48d743d8e3b6c1d63bd4d598d52a4f5461ce1fa7ffb`  
		Last Modified: Mon, 09 Nov 2026 20:22:46 GMT  
		Size: 9.3 KB (9278 bytes)  
		MIME: application/vnd.in-toto+json
