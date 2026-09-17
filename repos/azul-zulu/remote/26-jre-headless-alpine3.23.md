## `azul-zulu:26-jre-headless-alpine3.23`

```console
$ docker pull azul-zulu@sha256:2613996e31895e8dcf791b73254cb374f0cb249ca11159af1fe6dd45bc0d4a88
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:26-jre-headless-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:72f3d85349679da2c2c93b0e35eb0d196286a4cd1d31eb34947720018ba48460
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.8 MB (88759211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c162e1e85b8a35014049d98740cbe14f7592a225f0b2e2bd0a2f90e32debc4a0`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 17:37:37 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:37:37 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:37:37 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu26-jre-headless=26.0.2.1-r1;      java -version # buildkit
# Wed, 19 Aug 2026 17:37:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Wed, 19 Aug 2026 17:37:37 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41156aab64b002173dc1686e029ef3efc3d40e486731df150c75712236f5a6fb`  
		Last Modified: Wed, 19 Aug 2026 17:37:50 GMT  
		Size: 84.9 MB (84914790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:a5687b60eb8abccef4c18cc8ff9a78e02848eaaa5e5e0cdf92ed4fa7be6ecb12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:020faf7af41da808f2e14bf795ca769f0ac073af613cd34ba36ff8ab7f9e331b`

```dockerfile
```

-	Layers:
	-	`sha256:15ddbec2f37c2ba693d792d05bf79e2863fc9765aebab2e363609c4d045b5b4e`  
		Last Modified: Wed, 19 Aug 2026 17:37:47 GMT  
		Size: 7.6 KB (7583 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:26-jre-headless-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:52d4b4e2028b112402925d1aaebbbd96e684369f53dd3fbe41edb31547c87b4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.9 MB (87892622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e67fbffb715a3b692a60f132cc81a900f97818d0e7f6cc639fdfa4824d8e98f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:40:37 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 17 Sep 2026 21:40:37 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:40:37 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu26-jre-headless=26.0.2.1-r1;      java -version # buildkit
# Thu, 17 Sep 2026 21:40:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Thu, 17 Sep 2026 21:40:37 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e27df582c71ef5efb53f525bdc6281766f93112a63663213ea4d65886ddb0b0`  
		Last Modified: Thu, 17 Sep 2026 21:40:51 GMT  
		Size: 83.7 MB (83706566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:1f1a53fbe72ca4d90e5076f00592a13d32e63dd6698f329385759a0f536497b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 KB (7674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a77f9339eeed29e67bf8a6dd9758811c272175b18aa97e2944929ed0da3b4be`

```dockerfile
```

-	Layers:
	-	`sha256:fcb4881f1fda83106a6defe791446d6a128924cfae8d6ffed161dc9a73956817`  
		Last Modified: Thu, 17 Sep 2026 21:40:49 GMT  
		Size: 7.7 KB (7674 bytes)  
		MIME: application/vnd.in-toto+json
