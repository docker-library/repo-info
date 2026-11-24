## `azul-zulu:27-headless-debian`

```console
$ docker pull azul-zulu@sha256:adcea91f8d7f8c548ee7e9f4be540d1a409f29806d98f094088d4771caa8b014
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-headless-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:189b14ee73ecc73ccd95f4f2d47feb8f448edbcbbec7c0b482039057b4e0f9c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.3 MB (213263275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d630811eec891b26004b7a4d20d6c7c7ada1e0c4849ff0546c706dcd524ecfbf`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:39:01 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 24 Nov 2026 04:39:01 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:39:01 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu27-*\nPin: version 27.0.1.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu27-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 24 Nov 2026 04:39:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Tue, 24 Nov 2026 04:39:01 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60a090c81e12cdef38a7f2567875d12ffaa7d59cfd9c73700dfc136908ff0064`  
		Last Modified: Tue, 24 Nov 2026 04:39:19 GMT  
		Size: 183.4 MB (183421093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:d501317bf9a256856f21566e84634689241c27b5b49651fe32354d50dd94e244
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88dc27d8c9fc6119d05bc41b143952a70bc22298e6d3c16a9eef07faf9059857`

```dockerfile
```

-	Layers:
	-	`sha256:74823dfc058a1ae3d389f53ae58abe60df9cb29285e37083d491d215e7158d3f`  
		Last Modified: Tue, 24 Nov 2026 04:39:15 GMT  
		Size: 9.3 KB (9301 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-headless-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:df5643b6ddcd14e5e946120f269cbd9e70c706242a3cb11829811f1302107250
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.3 MB (213310040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9612f1a7991b8ed304c5c27ce14b637b4bdfbc3bfa8ccbee7ea6d295384f5134`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:43:28 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 24 Nov 2026 04:43:28 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:43:28 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu27-*\nPin: version 27.0.1.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu27-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 24 Nov 2026 04:43:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Tue, 24 Nov 2026 04:43:28 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:478b8b21907bd1260b99e9e97debb1a1d5588fc46fbebcfd7e402a4bb6a8962b`  
		Last Modified: Tue, 24 Nov 2026 04:43:46 GMT  
		Size: 183.1 MB (183112006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:3878ed054fcae9900e8e95f9ce02443775f73988ec320ab8946c63e121c8900f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80d9464444ded05901c7428e3b7088378c864f87372f36f1548988a0c5f01f89`

```dockerfile
```

-	Layers:
	-	`sha256:ce1ca640396fad6f1e83b36ff99fc2627e08a81b681721aa6a8dcc97a8111dc4`  
		Last Modified: Tue, 24 Nov 2026 04:43:43 GMT  
		Size: 9.4 KB (9404 bytes)  
		MIME: application/vnd.in-toto+json
