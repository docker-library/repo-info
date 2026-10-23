## `azul-zulu:27-jre-headless-debian`

```console
$ docker pull azul-zulu@sha256:2d7d3b6ff99e207f4550eacc3f7811887ea05d669d6664e99ee429d5cd1d9c2e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-jre-headless-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:f0b561d8cacb04684bd20b453093bfe5784384fd863cc1b3e10012ccc6ce73db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.9 MB (118925877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45f15486db04386f9b5cf74cbec222dfd8f9de2269ef275cd25918195ee8a98e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Fri, 23 Oct 2026 20:03:44 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:03:44 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:03:44 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu27-*\nPin: version 27.0.1-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu27-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Fri, 23 Oct 2026 20:03:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:541c34bca3d1f2ef8896ffe86de9a23560daf5d30a41e68cd4a991fbec04ab1e`  
		Last Modified: Fri, 23 Oct 2026 20:03:57 GMT  
		Size: 89.1 MB (89082298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jre-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:2fdfa51cd08be8acb6fe282c06e5a62ddf95381c54a67da3dc3f549568efdc48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae2573cd7618f4d08bb7eaf46d54105c4a3ad410ca69ce7d16b4392b7104f49a`

```dockerfile
```

-	Layers:
	-	`sha256:5d8b6f278d271ed13e797840b79dd02ad027fd2906d791c4ddab716739763ddb`  
		Last Modified: Fri, 23 Oct 2026 20:03:55 GMT  
		Size: 9.3 KB (9298 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-jre-headless-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:cb53bb498aae154547410c18b07aaaf6f230d135bd886a3e97f6b718e62ec93f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.2 MB (119188168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0cfe719d0b7394c493705cafe27514c44a8d09d0ce34dd6301c16cbac5c959a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Fri, 23 Oct 2026 20:06:02 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:06:02 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:06:02 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu27-*\nPin: version 27.0.1-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu27-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Fri, 23 Oct 2026 20:06:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09f091db6c3f549e8ed3bb7deb4b69cec7f00c3655d5c61151eeabb32266831e`  
		Last Modified: Fri, 23 Oct 2026 20:06:17 GMT  
		Size: 89.0 MB (88987690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jre-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:192a959cfea77e0b9723f8ac76615e924f4911c2a1ae6d8a44b5d09e9424aec2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f74eb0532b1fd71f15202b29ce821ce5a5bb121dbb0bc09e532a45567b99492`

```dockerfile
```

-	Layers:
	-	`sha256:2b327134eab0efab9597a0ca91f15562330662c3c3a394a0b35b14991aa7fd06`  
		Last Modified: Fri, 23 Oct 2026 20:06:14 GMT  
		Size: 9.4 KB (9401 bytes)  
		MIME: application/vnd.in-toto+json
