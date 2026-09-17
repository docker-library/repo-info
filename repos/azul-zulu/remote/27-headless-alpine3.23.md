## `azul-zulu:27-headless-alpine3.23`

```console
$ docker pull azul-zulu@sha256:87704c064479026a9a1b86dfeba6b47ac0882abe65ec9c7dcf429d0f64b6147b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-headless-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:cb596442e44d390f60edb3a5406404703f6f1b689f62cd0207306fd1e84d329f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.0 MB (182950013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10f305c676e44f9baca0641b5dbfe97d4e9f9a769a9dc92280494fc87fa161d9`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Wed, 16 Sep 2026 16:30:15 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 16 Sep 2026 16:30:15 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 16:30:15 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu27-jdk-headless=27-r1;      java -version # buildkit
# Wed, 16 Sep 2026 16:30:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Wed, 16 Sep 2026 16:30:15 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 16:30:15 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:996a017606fd60d84070f493791a8cc97e7c6b4b18caf90ef20d8b530947fda6`  
		Last Modified: Wed, 16 Sep 2026 16:30:33 GMT  
		Size: 179.1 MB (179105592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:2cc22a33dfcf0629c05ed970c6fac781aa951978a10143edf8976679e7456912
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d9fa1db4fc3de8ed1b68c9db10360611cf0039e9dada0e3aebf46fce438b76e`

```dockerfile
```

-	Layers:
	-	`sha256:8f9cf53976441be8cd4b824483609d9de3622feebe88822379b3f0336007e3f1`  
		Last Modified: Wed, 16 Sep 2026 16:30:29 GMT  
		Size: 7.6 KB (7566 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-headless-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:bcf04457c42968f940f3c9b4c4c89f2cfdae71905c9713dd3fb70590a0fb6a1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.9 MB (180865194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:975c55794096ed162c4d97ff7c378c11b0dc4027f21263284ebf4ab52c5f0870`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:40:42 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 17 Sep 2026 21:40:42 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:40:42 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu27-jdk-headless=27-r1;      java -version # buildkit
# Thu, 17 Sep 2026 21:40:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Thu, 17 Sep 2026 21:40:42 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:40:42 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8c3930e4b2d81bea2f887d19d18f93263b4eb656c37d232a9636eaaf08b62ea`  
		Last Modified: Thu, 17 Sep 2026 21:41:00 GMT  
		Size: 176.7 MB (176679138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:e41118d0637eca84eac241203b12173f3b1bc0f93e9d32b9bc66936e1d8f7d85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 KB (7657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e4b21a9f958de1c00bcbc01b6689d21aa0a14ac791ba43960cc9a6b6b22c561`

```dockerfile
```

-	Layers:
	-	`sha256:9249777e851e42c44499382034c1b032879b7fdc3e136e98c7c809c9e4737b7f`  
		Last Modified: Thu, 17 Sep 2026 21:40:56 GMT  
		Size: 7.7 KB (7657 bytes)  
		MIME: application/vnd.in-toto+json
