## `azul-zulu:17-jre-alpine`

```console
$ docker pull azul-zulu@sha256:49d7160ac33e37ec820f89ef0ee81b9d1624e87679d8e99034caf039dfe6940e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-jre-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:207ad5b2740ef814958561b42d101400774a070d07f4ef7e91e245e9611771fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.2 MB (70162351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c7da2f3db06807617df3dbc908ddc95951c68e228c89a7adf0ec83aa37e72a9`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 22:29:16 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:29:16 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:29:16 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu17-jre=17.0.20-r1;      java -version # buildkit
# Thu, 23 Jul 2026 22:29:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Thu, 23 Jul 2026 22:29:16 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0123706beab21a152278424013543b4c5263a0846d380584c24d9795e468e25c`  
		Last Modified: Thu, 23 Jul 2026 22:29:27 GMT  
		Size: 66.3 MB (66317930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:0ff001e6fb30ececc6a94bf3323f51244c01e72cd9c4bcebb3f35a3d445758c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 KB (7483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ce9a55b22c18c4bdb764fba3e663d54794a464b930968c4a1886cc7f3b406cf`

```dockerfile
```

-	Layers:
	-	`sha256:3c0caabc06a27b847ead5f7223f5abda478d37280aeb33de7cab831a1b84e780`  
		Last Modified: Thu, 23 Jul 2026 22:29:25 GMT  
		Size: 7.5 KB (7483 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-jre-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:a84a0d55bac058e8017e584614410075ca6fdf00c0e657be09532f7a6501089e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.8 MB (69838959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57b23cb3185bc50237075a73f63b9fa3866e87bab82af4f49b93074a6b2ee84b`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 22:30:14 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:30:14 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:30:14 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu17-jre=17.0.20-r1;      java -version # buildkit
# Thu, 23 Jul 2026 22:30:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Thu, 23 Jul 2026 22:30:14 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2593b89788acd3406eab36fe367fb8e44685f63089abce149e1ad3f101a0ec9`  
		Last Modified: Thu, 23 Jul 2026 22:30:26 GMT  
		Size: 65.7 MB (65657099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:582126e356a5f4026869de05722ad48d0cc7a37045f9854686cac3f19ed2de8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef9b9d9477efed85bc53598f931231f1bae1e9f25c8fe763122956ec37a0f497`

```dockerfile
```

-	Layers:
	-	`sha256:12640624309660d0cf4707ab221b1a155e1df1521546c75ebd53b2d22abf3e34`  
		Last Modified: Thu, 23 Jul 2026 22:30:24 GMT  
		Size: 7.6 KB (7575 bytes)  
		MIME: application/vnd.in-toto+json
