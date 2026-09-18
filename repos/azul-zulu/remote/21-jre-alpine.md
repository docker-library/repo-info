## `azul-zulu:21-jre-alpine`

```console
$ docker pull azul-zulu@sha256:9ad9f72937ec09f94c3ac682660eb41f6cb6ecc790059fc773962420503d12c1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-jre-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:d586cfb3711add52ddb47255931e1b7da3aa35d78c36ae6e21f40c2917333767
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.3 MB (75296504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fe6bf53e4406f9747a41624b4808c0b47c78c8c737be7d6e0780e822050739d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:38:51 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 17 Sep 2026 21:38:51 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:38:51 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu21-jre=21.0.12.1-r1;      java -version # buildkit
# Thu, 17 Sep 2026 21:38:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Thu, 17 Sep 2026 21:38:51 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc81880dba85cc4f1f19cf397f5cc5923687d81d07b621915b4884f476ab7fb1`  
		Last Modified: Thu, 17 Sep 2026 21:39:02 GMT  
		Size: 71.4 MB (71447997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:91d171164ad0d1fba43ee7ae871a7092beaf5f167a981e07a791fed5efc0e8c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 KB (7493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf07b6fd0a58b93ef534706cf9aaf31b63607a37d9638098019a0fbab90d12c9`

```dockerfile
```

-	Layers:
	-	`sha256:a17fdfd7b8e7fed6a1a11d1936a5a4b271bddcf825af3dbdd7cfbf22ca9540c3`  
		Last Modified: Thu, 17 Sep 2026 21:39:00 GMT  
		Size: 7.5 KB (7493 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-jre-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:024d9c6752e9dc947a7e4882fb56cebfecb70951b2b67b04c72b8256acf58f9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.9 MB (74867859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c3200ce411125d6306c380f0574d2d510a0f1fca3a0bf92236897e0e20cc983`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:40:03 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 17 Sep 2026 21:40:03 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:40:03 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu21-jre=21.0.12.1-r1;      java -version # buildkit
# Thu, 17 Sep 2026 21:40:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Thu, 17 Sep 2026 21:40:03 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9a54306f173f1a49a2c0e0015b852a99b4dba3d423a5c7a5209c1477cb380ab`  
		Last Modified: Thu, 17 Sep 2026 21:40:15 GMT  
		Size: 70.7 MB (70681803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:fba2bbc4ed5bad58637bde194234f95d19eafb543047641502fb5ff77b1848aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:012bd42a2f5a5b7d4c5bbf7271d8c36b5d85453fff7d35fef10d42dd6db1c9a8`

```dockerfile
```

-	Layers:
	-	`sha256:60c080224e48d24c37ab22c8020af4b86fe11897337ede994c8114c43e644f74`  
		Last Modified: Thu, 17 Sep 2026 21:40:13 GMT  
		Size: 7.6 KB (7584 bytes)  
		MIME: application/vnd.in-toto+json
