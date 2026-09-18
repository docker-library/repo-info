## `azul-zulu:11-alpine3.23`

```console
$ docker pull azul-zulu@sha256:a065b6bf5a660bfb3ce30e969e7ed6adbe8fd5723f9d26800ec4ed50f381bead
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:d98f66e41c8f19b0d5447f13bc94f490018bb4900224606e704eafaf6d2235d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.9 MB (146923188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d0e178c913a331f653c931026fe78a3e961608091ca23e2cc97219beef0cadf`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:38:08 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 17 Sep 2026 21:38:08 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:38:08 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu11-jdk=11.0.32.1-r1;      java -version # buildkit
# Thu, 17 Sep 2026 21:38:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Thu, 17 Sep 2026 21:38:08 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:38:08 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e79cb57d883d9ec197651e71fd1ea3479501d0c01e24cbcdc48946792251fc66`  
		Last Modified: Thu, 17 Sep 2026 21:38:21 GMT  
		Size: 143.1 MB (143074681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:ac48a4d2238cf7f0b863b3334ba6f23cae7811de639b07d1f105493b6fb3ad8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 KB (7832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc2362ea274747d33fcef5a8d550e0d824aae3b1148682f433f98023733d9288`

```dockerfile
```

-	Layers:
	-	`sha256:04da9daa32bd2ea8a0d9debf1c746fabd33581212543e14832072e379e142f44`  
		Last Modified: Thu, 17 Sep 2026 21:38:18 GMT  
		Size: 7.8 KB (7832 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:d9b8a8aecb4da3cdb9567dc4af1a4c54f37e5548929619d64c20ead1dd849c18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.6 MB (145607481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc53b1ae733c1d458a01d27ff48dbaee37c118c406e437a384be52dcf3fcf88d`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:39:22 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 17 Sep 2026 21:39:22 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:39:22 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu11-jdk=11.0.32.1-r1;      java -version # buildkit
# Thu, 17 Sep 2026 21:39:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Thu, 17 Sep 2026 21:39:22 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:39:22 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d086efaf364e5ece227715366100c855c54074fa4aaacc2336bc4dc057039a7a`  
		Last Modified: Thu, 17 Sep 2026 21:39:37 GMT  
		Size: 141.4 MB (141421425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:f788c44a04419fe5fa8bc1451972a5a27a26abcdc774cc2dcb5212b8fe7dc45c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 KB (7936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efc6b286c4748da6cc66b2e7171092262cff59b8ec698e944a7610442555f54e`

```dockerfile
```

-	Layers:
	-	`sha256:af1163048070966e5aff3eed42f3a64420fbf9fa37a253f6158c14f50687ce7b`  
		Last Modified: Thu, 17 Sep 2026 21:39:33 GMT  
		Size: 7.9 KB (7936 bytes)  
		MIME: application/vnd.in-toto+json
