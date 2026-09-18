## `azul-zulu:25-headless-alpine`

```console
$ docker pull azul-zulu@sha256:89f56d95d65ee723e10b85e1347267fdc55d34dbc2bcba3218841a7d9944f326
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-headless-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:c919c0a488e05a89de3e8c51b990753ee2b4a3853753b4de1d7e66ac82b3ed82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.9 MB (180895700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34dde1c9bb42d614db7414052ba4eaf4c375071d8533ed3f798ea55f04f35f8c`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:38:56 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 17 Sep 2026 21:38:56 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:38:56 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu25-jdk-headless=25.0.4.1-r1;      java -version # buildkit
# Thu, 17 Sep 2026 21:38:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Thu, 17 Sep 2026 21:38:56 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:38:56 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33b59402df9fd8211c0100fb5df39408e732cfdc880478ddf20dfde01d4ccd16`  
		Last Modified: Thu, 17 Sep 2026 21:39:14 GMT  
		Size: 177.0 MB (177047193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:19574b0f7ad097182d85065c135ac6ad516b65f77eefdfef66b39bf9a48f4cb3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51ef2c0fc8d44760162e1e724cff799d2632fd2711361fb0810b5ff48ef99c44`

```dockerfile
```

-	Layers:
	-	`sha256:e1b1bdd5b0b02f606e403825e350ef5666f13e064d773cfda06ebcf2df668b6f`  
		Last Modified: Thu, 17 Sep 2026 21:39:10 GMT  
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
