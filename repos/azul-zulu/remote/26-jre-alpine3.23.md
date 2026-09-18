## `azul-zulu:26-jre-alpine3.23`

```console
$ docker pull azul-zulu@sha256:45a303f03e37a1ccef50437b34ae2cd4644f4e12a0635f2c21723345cb93da9d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:26-jre-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:91f318bc5aca33b3e9c343720f6f72e6a8e3ca5658e78d663778e5b363aeb253
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.8 MB (91765327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff6a79b54822269a3cc6c8527f7df117b8c278d05ee294d662bb37357a75bed8`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:39:12 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 17 Sep 2026 21:39:12 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:39:12 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu26-jre=26.0.2.1-r1;      java -version # buildkit
# Thu, 17 Sep 2026 21:39:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Thu, 17 Sep 2026 21:39:12 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3ed91c78e039ed9b08042dfc562267e4bb6c52a4d7b6a7ca1a525c1fa3de301`  
		Last Modified: Thu, 17 Sep 2026 21:39:26 GMT  
		Size: 87.9 MB (87916820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:60abc1c3711be9cb6da7b217ac043ddfe2c6ef5b019cae8d6801aaa8c6ab0315
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 KB (7490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40560a16cd55f266ccea03aba7238a57784da4441ca2dff33a1f5fbf340d8095`

```dockerfile
```

-	Layers:
	-	`sha256:41fb3535440265d6bb5d1fdae6406fb83ce840277ae356bd32099d198a6c45b7`  
		Last Modified: Thu, 17 Sep 2026 21:39:24 GMT  
		Size: 7.5 KB (7490 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:26-jre-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:c0247250e465481f5876d3cdfd929bb59de49b01ae8e5936749e1124f79ce195
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.9 MB (90911946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f753a6b8af83523fa89d76c097a46003e5a65967b736b990c2e33b309464ab48`
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
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu26-jre=26.0.2.1-r1;      java -version # buildkit
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
	-	`sha256:fffc48ee1e86250703654b8c03ec05d7017a29e1d6faeca8b895e30b440b7d2e`  
		Last Modified: Thu, 17 Sep 2026 21:40:51 GMT  
		Size: 86.7 MB (86725890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:031296cda0cc95fbbef4eaf9cb5e677d5afdacbe05328d5fc00cc610b9bcf450
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e95f788ca9bc54930a8db8b7f27e417b2219fdd9ece35da768135b82f95c04b`

```dockerfile
```

-	Layers:
	-	`sha256:7102999ca887196f7f91e4bb93bcbc8d9d1323d43f72c1981870a56fd00fa1a5`  
		Last Modified: Thu, 17 Sep 2026 21:40:49 GMT  
		Size: 7.6 KB (7582 bytes)  
		MIME: application/vnd.in-toto+json
