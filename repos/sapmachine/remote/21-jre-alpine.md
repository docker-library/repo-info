## `sapmachine:21-jre-alpine`

```console
$ docker pull sapmachine@sha256:f3bb49192d8bf01c9048b350d455a2829bc1173922cc7615b9316f9e2c30de8b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:21-jre-alpine` - linux; amd64

```console
$ docker pull sapmachine@sha256:b5ca2622007d6b217598f35b8c32514ae6577aed51bd47973b7d2d66e29aa6a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.0 MB (66999732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6946633eee8507f566ee03be2a881a9edf0b1104296d1e49b75f919d8bc6aaf`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:14:40 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-21-jre=21.0.13-r0 # buildkit
# Wed, 21 Oct 2026 22:14:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-sapmachine-jre
# Wed, 21 Oct 2026 22:14:40 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0adbf933d01560f97e1d8637f17230f434609d6c1501403c9c24ac248e893d8b`  
		Last Modified: Wed, 21 Oct 2026 22:14:54 GMT  
		Size: 63.1 MB (63147505 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-alpine` - unknown; unknown

```console
$ docker pull sapmachine@sha256:d45936c5be79e8f2d5c9b2d81c2670ee0bec5f3e8e695efc5404638c6e1423cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **436.2 KB (436182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2a4396630ede8dfb111e5d0770de4cf5f2f46999256f7f80730f4ada50d64e1`

```dockerfile
```

-	Layers:
	-	`sha256:8f99657c00c487a3f2d5f23589ba53872c3a99d6c7fa54459c390873a4f09e1e`  
		Last Modified: Wed, 21 Oct 2026 22:14:52 GMT  
		Size: 428.6 KB (428572 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b17fbc9180ab051b527c3f4d1ef60a03685a6f8710e6d68061f0684032bb13b5`  
		Last Modified: Wed, 21 Oct 2026 22:14:52 GMT  
		Size: 7.6 KB (7610 bytes)  
		MIME: application/vnd.in-toto+json
