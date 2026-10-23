## `azul-zulu:17-jre-debian13`

```console
$ docker pull azul-zulu@sha256:89250da8db44a6254f289bd67fc6c494cd3e94712e61cdc727350da780c3eb3c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-jre-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:07c9ee5b26f61ed23dd134bb530850333dc9cad8b566bbbeb8b6351ed4e71239
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.1 MB (101144015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1eb45085186fde8bf730985c0ad7bcae92689a7a93337699da428a7b0464bf09`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Fri, 23 Oct 2026 20:00:13 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:00:13 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:00:13 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.21-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Fri, 23 Oct 2026 20:00:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21511cdfd680f32c8ed37f38dc3002494acb448cab263b8083cedbcbe03c5601`  
		Last Modified: Fri, 23 Oct 2026 20:00:25 GMT  
		Size: 71.3 MB (71300436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:c5f3a008cb6aaa65d891244948e1c598fa362f79e898fcf9fd2217ef5c1ec98f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92d4c0717f98efca6b3e8d1bfccef5eeab9a492ce630cd71d49f40e9401bca53`

```dockerfile
```

-	Layers:
	-	`sha256:d7bbb24f991a8c48449f1ad17de2ad3c0a37d5c43fbf16d128c030c7fbc58367`  
		Last Modified: Fri, 23 Oct 2026 20:00:22 GMT  
		Size: 9.2 KB (9189 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-jre-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:5f3efe1ceb96c18d3a773676b44dbf792c30cad639499e32120b22e572de898a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.6 MB (101550191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfdb4aa777d9b797ba55d8c278ec956f14a6282330a9c7b84917c21ee51c887d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Fri, 23 Oct 2026 20:03:34 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:03:34 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:03:34 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.21-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Fri, 23 Oct 2026 20:03:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c0b29c0ac8750c9de476434f6f445b9ca32e9fd1d438130cea2334b928c03c7`  
		Last Modified: Fri, 23 Oct 2026 20:03:46 GMT  
		Size: 71.3 MB (71349713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:a31d4f091a0817056bfdd4301931fd981320b2ad232871dcd54d83ef73bc3af0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d16c49dab5f6a1384ca3d624db0a297e263d268f72001db7aecfbe92739fc23`

```dockerfile
```

-	Layers:
	-	`sha256:590b4875b99a4925e9084a7b30b2427fb7a6966bbe720eef411df1858f06d871`  
		Last Modified: Fri, 23 Oct 2026 20:03:44 GMT  
		Size: 9.3 KB (9294 bytes)  
		MIME: application/vnd.in-toto+json
