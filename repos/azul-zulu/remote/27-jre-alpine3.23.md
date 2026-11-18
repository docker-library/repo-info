## `azul-zulu:27-jre-alpine3.23`

```console
$ docker pull azul-zulu@sha256:ad4baf056e9cc609dfaddc21916a8f71aac97d44281bb629abc0cbc5e652c23a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-jre-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:48ca8f60708c2c93baaaaae9a5f58067848dc472e7c44368ccd7bc9c27cdd38e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.7 MB (90651595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52cc9fc929d9c3d4e04e8ef856b6249d88fe4bd2863704ff98bb7780263fb4b5`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 02:44:01 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:44:01 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:44:01 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu27-jre=27.0.1.1-r1;      java -version # buildkit
# Wed, 18 Nov 2026 02:44:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Wed, 18 Nov 2026 02:44:01 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4983816533f41f7326ac01a7675c26c83f12d71b0135195091819c8f9a19989f`  
		Last Modified: Wed, 18 Nov 2026 02:44:15 GMT  
		Size: 86.8 MB (86799006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jre-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:fb49ebdca585ee3d1c3c192ae327537897734aa2f7ee92330a1ed1911dc8f9c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 KB (7490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53a163ba40831bc9cbed94a7794cfb4baf5f5562855c6834710f0c90ce5a319c`

```dockerfile
```

-	Layers:
	-	`sha256:71eee2cffae912d18ac1622aed8a0bc739b3ffd540ce8604393856a3192ae079`  
		Last Modified: Wed, 18 Nov 2026 02:44:12 GMT  
		Size: 7.5 KB (7490 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-jre-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:9ebcbda7ea0ccc0ab4161685b4530d5af83e4a86efe5bf0a26facb683d4dd286
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.8 MB (89835399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:003c13ab8ee04227b03c5533e01314772c3370f7dee10e57852ab0a3e1c0c268`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 02:44:04 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:44:04 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:44:04 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu27-jre=27.0.1.1-r1;      java -version # buildkit
# Wed, 18 Nov 2026 02:44:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Wed, 18 Nov 2026 02:44:04 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36ec33e7c9ba9e38946c7944174d6399423402d6a44faa6678bcb5b40b642b10`  
		Last Modified: Wed, 18 Nov 2026 02:44:18 GMT  
		Size: 85.6 MB (85645178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jre-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:16d05277f328fe9d77f7a3eda72ee94872569cf7df25124cc52bf4e9ea5c013f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2046a7ef513ca8de4a80359cd9f67a0dc3a988e81cf81cb4e10db9aeb6be05b3`

```dockerfile
```

-	Layers:
	-	`sha256:d6472438655aedf88eabd839a17b8a865812a856b7ecb726b84f56c5d4673bde`  
		Last Modified: Wed, 18 Nov 2026 02:44:16 GMT  
		Size: 7.6 KB (7582 bytes)  
		MIME: application/vnd.in-toto+json
