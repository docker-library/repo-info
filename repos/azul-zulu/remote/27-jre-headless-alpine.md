## `azul-zulu:27-jre-headless-alpine`

```console
$ docker pull azul-zulu@sha256:c5023ed0d68597ff64f2c0a2c157a8e4aa5fbde2d31c68fc747c6906e445a427
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-jre-headless-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:4ad8e87230ad75902f83cf9fdbe804adfc5fc705c6b968d99de272cbd7657499
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.7 MB (87666997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca22bc42549e724ad64f6936f39852bb3d16867816dfc71f00e2489582920377`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:39:35 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 17 Sep 2026 21:39:35 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:39:35 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu27-jre-headless=27-r1;      java -version # buildkit
# Thu, 17 Sep 2026 21:39:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Thu, 17 Sep 2026 21:39:35 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa3021fec5b62e54a8fe0f2b85c7f0b15137b8b8b741288309250dadf4da84d2`  
		Last Modified: Thu, 17 Sep 2026 21:39:49 GMT  
		Size: 83.8 MB (83818490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jre-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:1dc2b606c400839f31b27b97f570f4f235dd26ab2ab7bffb398a372d5abf3e25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:129ef6176d2f15fc61367e6f0b86ff6b71eb24377d036bb199d0bca0ac140c18`

```dockerfile
```

-	Layers:
	-	`sha256:25d3db68356342b2136c42445a096d9abdebcd87ad2951febba78e85d008cd5d`  
		Last Modified: Thu, 17 Sep 2026 21:39:47 GMT  
		Size: 7.6 KB (7565 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-jre-headless-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:1734cc591d9c6f43f0e92461a8dfc71f38b2dfc2394c52014ec5ab4131ec5fd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.8 MB (86822390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eeb14aa34eebc448e37396af8585afa06e310a0220a7cccb28c08f55a64076fd`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:40:52 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 17 Sep 2026 21:40:52 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:40:52 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu27-jre-headless=27-r1;      java -version # buildkit
# Thu, 17 Sep 2026 21:40:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Thu, 17 Sep 2026 21:40:52 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20d4561a1b2a57aecea32a607f8ed8c8661606141632f784e8173ac468f891fb`  
		Last Modified: Thu, 17 Sep 2026 21:41:06 GMT  
		Size: 82.6 MB (82636334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jre-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:c98cd841b057dd9cda3135c6c28c321bb686189b7ee95db528c071196a03abf4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 KB (7657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8092b11cdd885146b366b9687219c5d2bfff110689561a59cc96377539ca04b`

```dockerfile
```

-	Layers:
	-	`sha256:a47f65d8712d9324bcf5ff5f97d6e63d8eec10bbafb0f3c092b535b577d407c4`  
		Last Modified: Thu, 17 Sep 2026 21:41:04 GMT  
		Size: 7.7 KB (7657 bytes)  
		MIME: application/vnd.in-toto+json
