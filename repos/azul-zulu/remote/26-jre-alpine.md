## `azul-zulu:26-jre-alpine`

```console
$ docker pull azul-zulu@sha256:00a0718a65c14359cd24c55ab20a8504d339f5620892a87cbd24d7a0e2bac65d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:26-jre-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:2c72fbe6b9751d27cc4533d13b920ce8d66acfdeba21234b85a6ce2e2498ae65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.8 MB (91763466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef4aa21cd2d54077b9adc21d8535589e9b2ad00d66c053c00898b60f380f6ab7`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 22:31:18 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:31:18 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:31:18 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu26-jre=26.0.2-r1;      java -version # buildkit
# Thu, 23 Jul 2026 22:31:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Thu, 23 Jul 2026 22:31:18 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8359690f56d7f2cc2037229054e773b5f9f47e2ed76034e16c9ddc1e19b6cc5`  
		Last Modified: Thu, 23 Jul 2026 22:31:31 GMT  
		Size: 87.9 MB (87919045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:b242a3bb5778ff4328ce6a2109248ab57d8cc24f57cc0a55cc552ebe56d41998
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 KB (7480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cedc7eaf2512a5e24db56cc171ec5f10f550f25ad343410ad71d49c64eb078f3`

```dockerfile
```

-	Layers:
	-	`sha256:c89414dad5351d184a1439b9eee34e2287a14d8d1ad882fb9afcdb50e342ad1e`  
		Last Modified: Thu, 23 Jul 2026 22:31:28 GMT  
		Size: 7.5 KB (7480 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:26-jre-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:b9584fa2ac5c8f17750c397cff3bbcd1dab0a5a319e30445f4bcf76917b2e682
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.9 MB (90906835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca17acf1333eb4f6fdeae165048752a31e989dd9e4bdc1f0df99067e85ec9e68`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 22:32:26 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:32:26 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:32:26 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu26-jre=26.0.2-r1;      java -version # buildkit
# Thu, 23 Jul 2026 22:32:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Thu, 23 Jul 2026 22:32:26 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1253ee6ede6229fe850561f3356caba2c79a284d6c41e3cf47d6dd9f63a50760`  
		Last Modified: Thu, 23 Jul 2026 22:32:41 GMT  
		Size: 86.7 MB (86724975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:e50332f8c1dcb375af0a1c46cd3b93aa7df322d4eb4835b1e55d08bc7e9af750
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1910596f53231f1b687219a512c49bbf95e3b601b57d90735672ea742ca053c7`

```dockerfile
```

-	Layers:
	-	`sha256:b9019990d1142e809578662fe23d80767be2461c7d7172744ad71ba21fca1686`  
		Last Modified: Thu, 23 Jul 2026 22:32:38 GMT  
		Size: 7.6 KB (7572 bytes)  
		MIME: application/vnd.in-toto+json
