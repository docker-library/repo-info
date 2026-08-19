## `azul-zulu:25-alpine3.23`

```console
$ docker pull azul-zulu@sha256:49a27102b1447526f251cceb0339b30fac0b3cd24f46cae63fb68d9625264923
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:9c6e3bd93cfe2296305cb35cdd0696cbfb687c02294fca7af718ff9208d526ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.9 MB (183904209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4b25c7253173bec8f6b6c5293a6a37d6b5b998d703ff93e03f4ed0e33d18a46`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 17:36:31 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:36:31 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:36:31 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu25-jdk=25.0.4.1-r1;      java -version # buildkit
# Wed, 19 Aug 2026 17:36:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Wed, 19 Aug 2026 17:36:31 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 17:36:31 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70dc564e7edc55d7491cd9261c45bdbf4373ea11503415c969cc39d35d948f04`  
		Last Modified: Wed, 19 Aug 2026 17:36:47 GMT  
		Size: 180.1 MB (180059788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:be8e143fc95970f0f9770b6f2f52d3ca11d10394a94c0477e00d559e265e01d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 KB (7824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a4695d0758d7a09bd63b3700eae553e47b250ff505aa63185ec8e1ee9632d53`

```dockerfile
```

-	Layers:
	-	`sha256:b2399700762b2193b7341c0ec599721f54e2a70c1a6f499b0dc905839ed8d441`  
		Last Modified: Wed, 19 Aug 2026 17:36:43 GMT  
		Size: 7.8 KB (7824 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:1a763a69b4c2f60363b6f56d9eb5bb152352736548d6419f7ea514d7518cdbdc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.9 MB (181854518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5a258456eb5af66dae2165463ec6de4efff060aecb9bd95b79a471cfd58d195`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 17:36:39 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:36:39 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:36:39 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu25-jdk=25.0.4.1-r1;      java -version # buildkit
# Wed, 19 Aug 2026 17:36:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Wed, 19 Aug 2026 17:36:39 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 17:36:39 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9bfdb75be16913dd2813aba384698cdc95a912174ade6816983af70b09653d9`  
		Last Modified: Wed, 19 Aug 2026 17:36:58 GMT  
		Size: 177.7 MB (177672658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:21c085747c2dc603ac65898ee54426798b63ac4e52ca75413e717fe5975ac388
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 KB (7929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2544850115ad96c1dfba9904fb54fb03cf1e7979b42d41f17eedd27f8c64c169`

```dockerfile
```

-	Layers:
	-	`sha256:b8daef8bdc85fc8eef4a099b2a44c63c3daeb54cf6628a0b31917e2d621f2cb8`  
		Last Modified: Wed, 19 Aug 2026 17:36:54 GMT  
		Size: 7.9 KB (7929 bytes)  
		MIME: application/vnd.in-toto+json
