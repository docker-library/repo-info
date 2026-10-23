## `azul-zulu:17-jre-alpine`

```console
$ docker pull azul-zulu@sha256:4fd6f3bcb50560bb3eb4d347aa7c4e77fcaa16b6cdc261f61879590ba80bad57
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-jre-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:7bb6535ececc2b6a86a3d39886a56332d86d413a2a30c1a973eb90430cc5c525
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.3 MB (70323674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7365fde3ad91758ba5eb393655d2facf602ef65b52eba9730e8484cfba98679`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 20:01:19 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:01:19 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:01:19 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu17-jre=17.0.21-r3;      java -version # buildkit
# Fri, 23 Oct 2026 20:01:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Fri, 23 Oct 2026 20:01:19 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea92d17fb62a23a4fe4ef25f8688341c883a3caedc5582cfe919d5611a858802`  
		Last Modified: Fri, 23 Oct 2026 20:01:30 GMT  
		Size: 66.5 MB (66471447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:ce87160a66062f1f5b3daf44b2ab4a8b36b983a94f8b2e7afa9deafc957e221e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 KB (7483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a29134949005a1cff0fa1e70ab376640b79d936f5f5776da19f04871676467cf`

```dockerfile
```

-	Layers:
	-	`sha256:739edcd9b47080a5dc93791e4aa5669478541bc5098db87c401215311cd39052`  
		Last Modified: Fri, 23 Oct 2026 20:01:28 GMT  
		Size: 7.5 KB (7483 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-jre-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:a01da4ade9456d685080948f7f352d701a405d633b7e734cf7aca8bc84c3e1bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.0 MB (70026151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcfe818a6c344eff49dfa04c896533a9f28db5a3da24c473a7b80fef70567417`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 20:02:46 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:02:46 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:02:46 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu17-jre=17.0.21-r3;      java -version # buildkit
# Fri, 23 Oct 2026 20:02:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Fri, 23 Oct 2026 20:02:46 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ba0d56013e4f5e1665b96a727236e02587c5a503549cb1ef815a4fe280442fa`  
		Last Modified: Fri, 23 Oct 2026 20:02:58 GMT  
		Size: 65.8 MB (65836657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:152b9c0834ed1e46d6e999b58dcb9c61c9c7f25d9f0b43343f90786ee84b461b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00596dd61a98ee444b5f151dc3228d00ba05bbf4407ff825342c6fb32d0ac242`

```dockerfile
```

-	Layers:
	-	`sha256:4129763bcdd3f300a0ae9a9629c33a1298113147262e13d739b904c17c225e11`  
		Last Modified: Fri, 23 Oct 2026 20:02:56 GMT  
		Size: 7.6 KB (7575 bytes)  
		MIME: application/vnd.in-toto+json
