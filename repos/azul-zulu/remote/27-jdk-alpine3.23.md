## `azul-zulu:27-jdk-alpine3.23`

```console
$ docker pull azul-zulu@sha256:917955ddcf6ebefd9c608cb3659fe36fdb927508b8e6c432955dabbff026465a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-jdk-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:3b03f1e426d03101be842b46d71304564673bc84abc3d6896fe459325fe918f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.9 MB (185890577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed0b8350f187e39286460fcf67f552d5f9b1796090a40054b83ea10e522751ec`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:19:02 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 21:19:02 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:19:02 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu27-jdk=27-r1;      java -version # buildkit
# Wed, 21 Oct 2026 21:19:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Wed, 21 Oct 2026 21:19:02 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 21:19:02 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34932dbbdbb99720e125f0971a8c266f7cb7433487e26218298b7aa1748555c8`  
		Last Modified: Wed, 21 Oct 2026 21:19:20 GMT  
		Size: 182.0 MB (182038350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jdk-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:b15927ced9705455588b778fc988d851f4126de079c02fb11c15b53789ad38d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 KB (7807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8303fd880bb31aa58854fb4429b8e4ed8db0642e377ec35e73d6ad820f1f0c8e`

```dockerfile
```

-	Layers:
	-	`sha256:791f6f1b812ef1cd43b9edea7d0417817bd112bbec9d9782612aed8d8949d354`  
		Last Modified: Wed, 21 Oct 2026 21:19:16 GMT  
		Size: 7.8 KB (7807 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-jdk-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:8214ac38a80d191b7440ae8a8a4e8f54aa62f464f28d5717c3811662cb64624a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.8 MB (183814821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59577dc8154634828b3688914183833dd7b3da81a8e1d5d1e6e38f68310c5f16`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:19:44 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 21:19:44 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:19:44 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu27-jdk=27-r1;      java -version # buildkit
# Wed, 21 Oct 2026 21:19:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Wed, 21 Oct 2026 21:19:44 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 21:19:44 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9b78dd1fda799cbaeffbd5530f18ddd1e34a999530494f20934139ebd78bef6`  
		Last Modified: Wed, 21 Oct 2026 21:20:03 GMT  
		Size: 179.6 MB (179625327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jdk-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:a69fca111a2f8e84cdc404dd0ffc9032767057d9f8e3b3245b7387acde8a0cb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 KB (7911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15fc8df7bc50a9d9457ec2bc9099702759bf665498952208e1962fcf55282e82`

```dockerfile
```

-	Layers:
	-	`sha256:6307f5a1344622e00379bde8a40f5bf21fc962619c12e9828f2f0882916416de`  
		Last Modified: Wed, 21 Oct 2026 21:19:59 GMT  
		Size: 7.9 KB (7911 bytes)  
		MIME: application/vnd.in-toto+json
