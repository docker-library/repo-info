## `azul-zulu:25-headless-alpine`

```console
$ docker pull azul-zulu@sha256:cee797f2186f965d39744f97bd3997ecaf5c8f4be99b1b770da9d9610728ac63
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-headless-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:b55890907a000def5598e4a2c163a0c7b906a7fb4007077627181aa94501c463
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.9 MB (180891713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38adfac10e69f84fa40cdfcf961d1f45f29f323bcc25c76a4c0cac4dad7acd34`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 17:36:37 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:36:37 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:36:37 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu25-jdk-headless=25.0.4.1-r1;      java -version # buildkit
# Wed, 19 Aug 2026 17:36:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Wed, 19 Aug 2026 17:36:37 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 17:36:37 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b032272f44621f7341c4c66d6bde4c8c9df6d051b7b1381dd292dfb201913a68`  
		Last Modified: Wed, 19 Aug 2026 17:36:54 GMT  
		Size: 177.0 MB (177047292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:643075debd9357e96e0965687c233518923d3f8c56aba30ff58ad5c282c01aed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec7a023a09dc573d56deea713e40840c5a8be88c45fa490af8881622aa9c363a`

```dockerfile
```

-	Layers:
	-	`sha256:4ec83110b9287e609ca3ca01a6bd4fbd87ed490d7ac0d3724adffbb274e92608`  
		Last Modified: Wed, 19 Aug 2026 17:36:50 GMT  
		Size: 7.6 KB (7584 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-headless-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:023d2e15f68e1fb1ce0ce9e8d9a99b0b016dea81bd9e6c27462643ce84370b89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.8 MB (178797197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3c18bfcf281cc57a3132b4b3fa220c08453cc71ba269788280102ab000a28fc`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:40:14 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 17 Sep 2026 21:40:14 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:40:14 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu25-jdk-headless=25.0.4.1-r1;      java -version # buildkit
# Thu, 17 Sep 2026 21:40:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Thu, 17 Sep 2026 21:40:14 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:40:14 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a297ee57837aeb60448790aafb6890e602e4ce9e56741bebc667956b46101dd2`  
		Last Modified: Thu, 17 Sep 2026 21:40:32 GMT  
		Size: 174.6 MB (174611141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:36f643445ecd11ba08c5e4be65cb117f9caf51172efb6ffc7fe4b3e621ab61e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 KB (7675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa10ba90294c1d9db2642e6c1646ae5efe6a701a0431065b19d77039441cc479`

```dockerfile
```

-	Layers:
	-	`sha256:f60a3336c0cf09493a7e8e31340088621c36413a71bc323c4c4cc18cf6df2fba`  
		Last Modified: Thu, 17 Sep 2026 21:40:28 GMT  
		Size: 7.7 KB (7675 bytes)  
		MIME: application/vnd.in-toto+json
