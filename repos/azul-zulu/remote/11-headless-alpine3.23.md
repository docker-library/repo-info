## `azul-zulu:11-headless-alpine3.23`

```console
$ docker pull azul-zulu@sha256:1bf66e780f47435f3eae58ccda6c968d2f89dd8dd8447dd0060a9803dc5b33af
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-headless-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:c620cfd8f9798d093a026457d8eeb0f712ced2b3fc47d4b2eb96feb7b290ea07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.8 MB (143792627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e053ba0c880cae30fe606552e6d83f922531b3098a414d3c04153a7c6a31509`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:38:14 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 17 Sep 2026 21:38:14 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:38:14 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu11-jdk-headless=11.0.32.1-r1;      java -version # buildkit
# Thu, 17 Sep 2026 21:38:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Thu, 17 Sep 2026 21:38:14 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:38:14 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff3b9bfa1dd0e84c0975a9b78e351f96efdae889d62343c2e2faae10eb0e8905`  
		Last Modified: Thu, 17 Sep 2026 21:38:28 GMT  
		Size: 139.9 MB (139944120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:f388fd94d4d627de4d1d3cffb08ffe7998434d060d429e37df13114552d4cbcb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e1d1a2bad0ef0a772f7a3908894a32fa879af1dd917d1a513d1a65c1f053a50`

```dockerfile
```

-	Layers:
	-	`sha256:5f5436ffdf52f7b84b7bfaf41cf890b6e9912c27522a5162a173a2baaceeac0b`  
		Last Modified: Thu, 17 Sep 2026 21:38:25 GMT  
		Size: 7.6 KB (7591 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-headless-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:fba17c62fe53efc772ab115e128aa58aa4b332ac717187dd96a51edd748a883c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.4 MB (142439225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85c05730ddfeffd2a5167b6074d1d8a284aaa8fad09d3abdf4b86a7f7252cea7`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:39:26 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 17 Sep 2026 21:39:26 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:39:26 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu11-jdk-headless=11.0.32.1-r1;      java -version # buildkit
# Thu, 17 Sep 2026 21:39:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Thu, 17 Sep 2026 21:39:26 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:39:26 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe6d7d99788dd05defa6eb900b28d8163a986e6e627aa9ac953394d096ae1bb3`  
		Last Modified: Thu, 17 Sep 2026 21:39:40 GMT  
		Size: 138.3 MB (138253169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:9136601647c00e8065f6843e61bd5dd79b8cbd07aff2dccb6f94adee2567baba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 KB (7683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3eb54ee94484259abbb6672833c895b14c5bc14f50ff129ad15561143c796072`

```dockerfile
```

-	Layers:
	-	`sha256:8219707939eb50755bcba9ec806fd0857a8357d0fe4131d3968220be44c02753`  
		Last Modified: Thu, 17 Sep 2026 21:39:37 GMT  
		Size: 7.7 KB (7683 bytes)  
		MIME: application/vnd.in-toto+json
