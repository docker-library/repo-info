## `azul-zulu:27-headless-alpine`

```console
$ docker pull azul-zulu@sha256:84a80c3877f61d4119c37112175e564c5ab833c66b6caca958abc1604b1a987b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-headless-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:7113c54ca2a4cca739b81cbd2fd4e1b0a5c5e2c3eb73f9b6a643b6cf76cded3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.0 MB (182954095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5254fc33d29870c2e44e24eb8a83a0ba30ba01ef0bae8d6675291208f5e0920d`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:39:27 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 17 Sep 2026 21:39:27 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:39:27 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu27-jdk-headless=27-r1;      java -version # buildkit
# Thu, 17 Sep 2026 21:39:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Thu, 17 Sep 2026 21:39:27 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:39:27 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2860e31669e3b86f93db5bd2725a3a5096b46db84a893bd4ef1ec64209aeb7fa`  
		Last Modified: Thu, 17 Sep 2026 21:39:44 GMT  
		Size: 179.1 MB (179105588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:83c3cf7d2bde99d4bd0608d7272d9b20a39d07a91c1a624afd2471946e2076ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e286517c1d116110d00bd1d6862063a4365e3c97c23a9609a0d3c68a8c135df7`

```dockerfile
```

-	Layers:
	-	`sha256:a651dd50a06923b1d500f906d0c502dfa5a4df02524a642cd56253e8e765aeba`  
		Last Modified: Thu, 17 Sep 2026 21:39:41 GMT  
		Size: 7.6 KB (7566 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-headless-alpine` - linux; arm64 variant v8

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

### `azul-zulu:27-headless-alpine` - unknown; unknown

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
