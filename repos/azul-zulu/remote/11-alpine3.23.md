## `azul-zulu:11-alpine3.23`

```console
$ docker pull azul-zulu@sha256:f551d8373db914a68bbecfdf224fb78b3ceed33f8bb79b60bc52f8bb099a650f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:fbf7391ba5937bc22ba8308c13cae727275f253224ed8af60dff7dd5f2244891
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.9 MB (146920508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7574f9db389ef44917107a144259e1405e9139175a12e78900a0f0b2a3170c27`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 22:28:19 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:28:19 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:28:19 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu11-jdk=11.0.32-r1;      java -version # buildkit
# Thu, 23 Jul 2026 22:28:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Thu, 23 Jul 2026 22:28:19 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 23 Jul 2026 22:28:19 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75de771d68309c24689a8363ffd1856906672cbb359e893651d05ffcd6b83557`  
		Last Modified: Thu, 23 Jul 2026 22:28:33 GMT  
		Size: 143.1 MB (143076087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:68badb5fe58f15d613d047f7e5b708222933163fddcbf0c1d7016812a4942279
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 KB (7822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c4c67d21059541c676447d9662e5e81bd04d8cdd1226324596e82bfd3f5ab17`

```dockerfile
```

-	Layers:
	-	`sha256:0ab31d598ea9eb8e4ed15c85b4edf64400dedd10b1482a03cd2ec90062a36cb7`  
		Last Modified: Thu, 23 Jul 2026 22:28:29 GMT  
		Size: 7.8 KB (7822 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:e1097a86f03eff285682878667f2cbba2aaac90c1f0950e88e5257f60eed1b4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.6 MB (145606753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:505e1a143b13f6f78065cb89cfd2cef19f7d209f8e9ed8a62723386cd05c7e68`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 22:29:11 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:29:11 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:29:11 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu11-jdk=11.0.32-r1;      java -version # buildkit
# Thu, 23 Jul 2026 22:29:11 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Thu, 23 Jul 2026 22:29:11 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 23 Jul 2026 22:29:11 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:982f3fa291e08b492a346b3036afaeb6ad1bd34c69a6bb589390e6033e74d5ff`  
		Last Modified: Thu, 23 Jul 2026 22:29:26 GMT  
		Size: 141.4 MB (141424893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:4b6f283ad7b80005b2ab8aff345c0e84550f63801f6c4e737f321776db9339c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 KB (7926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54cce30ee784463b012a763519738db2d9fbc4d45d97686e954678dbefd8e766`

```dockerfile
```

-	Layers:
	-	`sha256:c2ee8bceb85d76de390abf529f24cd01b60a1934a463be6e9f7f1e785e0612db`  
		Last Modified: Thu, 23 Jul 2026 22:29:23 GMT  
		Size: 7.9 KB (7926 bytes)  
		MIME: application/vnd.in-toto+json
