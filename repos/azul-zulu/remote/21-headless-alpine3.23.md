## `azul-zulu:21-headless-alpine3.23`

```console
$ docker pull azul-zulu@sha256:82adc36d3a16bccb692969a4b7dae2ffd277655a25be3ac31244d129a8f8505f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-headless-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:b1fe51a66ff21cec9ac413ee2208d4cf2519ad0418ce075c9370e9e88853b846
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.4 MB (161428657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:939b318adfc4e32e9ee87da2b8110f5c70fe4e140fefcc7262d8ab71ad5c3a09`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 02:42:27 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:42:27 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:42:27 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu21-jdk-headless=21.0.13.1-r1;      java -version # buildkit
# Wed, 18 Nov 2026 02:42:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Wed, 18 Nov 2026 02:42:27 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 02:42:27 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d02cb26238293cbbb9cadb8ca9d2038e0449edb4b294566f5a5cf3c6c4d28e1`  
		Last Modified: Wed, 18 Nov 2026 02:42:44 GMT  
		Size: 157.6 MB (157576068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:796be19dd4545e9140dec621ff8666e07cbd4a26701d770d4dcb9c4ba121a907
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4967c4ee1f9f3d5964be127e925dfe7c4721df22851bf61c408f7294fb9d3a67`

```dockerfile
```

-	Layers:
	-	`sha256:0ebf2bd11811a91364c35d77ce5d406a4690910d79aadca6590f1dc07c9b868e`  
		Last Modified: Wed, 18 Nov 2026 02:42:40 GMT  
		Size: 7.6 KB (7591 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-headless-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:1692728018342d6f0b6626003a16c200c820123ed00f92248f5a9368082a1579
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.0 MB (159968076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec9ad2b90f87738bcf004791a922d401a2c5dd22a105e6df08838a80fd9d554c`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 02:42:17 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:42:17 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:42:17 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu21-jdk-headless=21.0.13.1-r1;      java -version # buildkit
# Wed, 18 Nov 2026 02:42:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Wed, 18 Nov 2026 02:42:17 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 02:42:17 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd4299cc15ecf37096be127659a77a73f3bc780dd660b7f15f6ee0ae60ebc9a1`  
		Last Modified: Wed, 18 Nov 2026 02:42:33 GMT  
		Size: 155.8 MB (155777855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:18b83ac333fe6d7b139c0d6e15b4167a6e6b41bf28e2ed8a7497fa1789a45566
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 KB (7683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5effb6a64cfbcc05e445a5f39a9aa4c508f8954da458737247efcc41ab01fd9e`

```dockerfile
```

-	Layers:
	-	`sha256:8af16a4580c7dab0cdf8d449f0f92ebf6d82f216afae29746e349e59dda50ca5`  
		Last Modified: Wed, 18 Nov 2026 02:42:30 GMT  
		Size: 7.7 KB (7683 bytes)  
		MIME: application/vnd.in-toto+json
