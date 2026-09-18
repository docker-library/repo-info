## `azul-zulu:25-jre-headless-alpine3.23`

```console
$ docker pull azul-zulu@sha256:8134a7f59d965da0b344e2dfdc26d2b489606af1079eec16eab728c5f835c0d7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-jre-headless-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:13690572f1e77d8a64eb8bd97980fd80ed20944670fafd3255944964f112f6e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.8 MB (86781179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:489f31cdf874cd2419b77886ec5a04d53e63382e4798dba645227f8726e5b74f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:39:09 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 17 Sep 2026 21:39:09 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:39:09 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu25-jre-headless=25.0.4.1-r1;      java -version # buildkit
# Thu, 17 Sep 2026 21:39:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Thu, 17 Sep 2026 21:39:09 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f9e254d2e7f08ff253184c6332f8e3d85eb2235cb9b923ad603be5dff59e919`  
		Last Modified: Thu, 17 Sep 2026 21:39:23 GMT  
		Size: 82.9 MB (82932672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:02a4d16b7840741782586ccea2039ebcd9ee81309776f626f649179927097556
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c85f2f53697415a444dc84fff4d2f50eae4d48f7c8f20aa380b2968b8f53471`

```dockerfile
```

-	Layers:
	-	`sha256:2da7038408b7249becf68dfc0fd609260a11d2a1fd3d56a83744ef6ece0cd843`  
		Last Modified: Thu, 17 Sep 2026 21:39:20 GMT  
		Size: 7.6 KB (7581 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-jre-headless-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:433bc68688e0b2cde40c7a9319db1f32957b4c37bed80f728a6b396435acafa6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.9 MB (85920707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bebf708011649f5cc844b249ec54e662a97f59e29b2d5461eb73c42877ff1e1`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:40:18 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 17 Sep 2026 21:40:18 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:40:18 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu25-jre-headless=25.0.4.1-r1;      java -version # buildkit
# Thu, 17 Sep 2026 21:40:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Thu, 17 Sep 2026 21:40:18 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19b06aec8ddfb81541551a00cb2291bd1f257d7262b83ee9c4c1312b78340715`  
		Last Modified: Thu, 17 Sep 2026 21:40:31 GMT  
		Size: 81.7 MB (81734651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:d3d3f7f990552a876874b8241b4ede5242b260327662702ef05910785add1ce7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 KB (7675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88441f91452018a30dcd1391b9d6608684380d94661b5f26d7626ce69ae933d6`

```dockerfile
```

-	Layers:
	-	`sha256:4afacf79d9a760e705f32ffd6944863945bba3442e81064c5c0a3007451022ab`  
		Last Modified: Thu, 17 Sep 2026 21:40:29 GMT  
		Size: 7.7 KB (7675 bytes)  
		MIME: application/vnd.in-toto+json
