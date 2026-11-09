## `azul-zulu:11-jdk-alpine`

```console
$ docker pull azul-zulu@sha256:8a33f8d157354689ae5b7f3c664f852747c581f27b797a85a3daabae9de51280
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-jdk-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:ec60abb4f374ca7738057228a851b950693ea19938b23b9b438f55c3a6080740
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.0 MB (147028344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0692264234a5127da5f9543b7050c6920051a969a4cb2ceac55e650327ea8590`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Mon, 09 Nov 2026 20:22:31 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 09 Nov 2026 20:22:31 GMT
ENV LANG=C.UTF-8
# Mon, 09 Nov 2026 20:22:31 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu11-jdk=11.0.33-r5;      java -version # buildkit
# Mon, 09 Nov 2026 20:22:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Mon, 09 Nov 2026 20:22:31 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Nov 2026 20:22:31 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5a6202c33e475ebce2dfdaf163ca8b85732d79989a320c185168fb3438bddd5`  
		Last Modified: Mon, 09 Nov 2026 20:22:44 GMT  
		Size: 143.2 MB (143175755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jdk-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:6261d689040608853c1677d2f673428c35d7b209be64f6f9462aa7367c74ad9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 KB (7822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f13fedf88a04a640df28786fb41d599dff2b79cd988491d1dd67d99fbe0183c6`

```dockerfile
```

-	Layers:
	-	`sha256:b088966e13ba99bcc57ca368f51fc34a9eb63060423734b937afccda55aeefb5`  
		Last Modified: Mon, 09 Nov 2026 20:22:41 GMT  
		Size: 7.8 KB (7822 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-jdk-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:8a0fb9e1eea3e675c708976c4ea059d7beda931f1b1b8ed4c114ba07e7c8ba0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.7 MB (145706035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:298623850a924135238a1ae475b6200a962808888b6428fe2295b544b76e4e61`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Mon, 09 Nov 2026 20:24:17 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 09 Nov 2026 20:24:17 GMT
ENV LANG=C.UTF-8
# Mon, 09 Nov 2026 20:24:17 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu11-jdk=11.0.33-r5;      java -version # buildkit
# Mon, 09 Nov 2026 20:24:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Mon, 09 Nov 2026 20:24:17 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Nov 2026 20:24:17 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7baa246f3e2ce6aa09960a475aadb3bee58caf3efe4ff3a9bcee802b5c18bd0d`  
		Last Modified: Mon, 09 Nov 2026 20:24:33 GMT  
		Size: 141.5 MB (141515814 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jdk-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:be97b4291fb56e0b13e2b7859af9e434825cab2c39c68477f3ef97ea52065dd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 KB (7926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48bb7438f4bc538a405383aa2cfa5ba7fce8d383014ef2db8e4bed154e04dcb3`

```dockerfile
```

-	Layers:
	-	`sha256:8accac8bdc59060e6d384b4cd6386ec354ce5f1ec9d6004172e1df28926b348a`  
		Last Modified: Mon, 09 Nov 2026 20:24:29 GMT  
		Size: 7.9 KB (7926 bytes)  
		MIME: application/vnd.in-toto+json
