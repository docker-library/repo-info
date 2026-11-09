## `azul-zulu:11-jre-alpine3.23`

```console
$ docker pull azul-zulu@sha256:2e211c59af5fa01527e14b50695ad64b1f5981ad1be00db0354ea7c9ccc3a719
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-jre-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:d36280cc62e5786e014754f3cd11e56f774ffa2efac13e6a986d267362bf3227
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65783477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33f96f1cdc1f896c67892385fceedddeb1f30cebf2a557d1605857955d64bbc4`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Mon, 09 Nov 2026 20:22:52 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 09 Nov 2026 20:22:52 GMT
ENV LANG=C.UTF-8
# Mon, 09 Nov 2026 20:22:52 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu11-jre=11.0.33-r5;      java -version # buildkit
# Mon, 09 Nov 2026 20:22:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Mon, 09 Nov 2026 20:22:52 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f45899b488b468f4d630776731fcb4623d04538bcc181653623a5e4b07fab78f`  
		Last Modified: Mon, 09 Nov 2026 20:23:02 GMT  
		Size: 61.9 MB (61930888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:ae70a08777c2e42861d04fea1763282e1c992a9485c9cad12b1b4b214d81a4c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 KB (7483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a44b37755083a7eaec5cd09db20576d9a639f24166847649f57bb8c56a6c9a0`

```dockerfile
```

-	Layers:
	-	`sha256:e14191d16e20963413bcbbdc397a97453a46f3f018bc4183d67a90e4359c256a`  
		Last Modified: Mon, 09 Nov 2026 20:23:00 GMT  
		Size: 7.5 KB (7483 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-jre-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:f5ae360da659a3ae95c14a8606892132e1a0c7f46d8219a3fe66d2640139ff79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.4 MB (65355188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a40746452acee6c2dd6949d868e2e58df85842c8fbf78cbcffa61ff94234ea4`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Mon, 09 Nov 2026 20:24:59 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 09 Nov 2026 20:24:59 GMT
ENV LANG=C.UTF-8
# Mon, 09 Nov 2026 20:24:59 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu11-jre=11.0.33-r5;      java -version # buildkit
# Mon, 09 Nov 2026 20:24:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Mon, 09 Nov 2026 20:24:59 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6adf5ce9ce85dfccfe459e1eba623e876cf4ba20d838f32cbc4dac97fa3686fc`  
		Last Modified: Mon, 09 Nov 2026 20:25:10 GMT  
		Size: 61.2 MB (61164967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:998679716627c6947a601b99a3dc8adb93a6cbd23cc5f04dd3d70506289aa9a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:673ec7c26b26b6fcc9db49998b7e945f92cc181bee96adff9d8571419c1967cb`

```dockerfile
```

-	Layers:
	-	`sha256:a9b3ea2773ccf77fa1c8f6d54a9a11ac2a78a61274b31d67ca60902af8146abd`  
		Last Modified: Mon, 09 Nov 2026 20:25:08 GMT  
		Size: 7.6 KB (7575 bytes)  
		MIME: application/vnd.in-toto+json
