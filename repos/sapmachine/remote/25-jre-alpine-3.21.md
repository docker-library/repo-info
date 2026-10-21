## `sapmachine:25-jre-alpine-3.21`

```console
$ docker pull sapmachine@sha256:4cfd900b160f5b4d9cb71446f7dc8415ea0fcee552ce2ae7f7d18833c3e0e841
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:25-jre-alpine-3.21` - linux; amd64

```console
$ docker pull sapmachine@sha256:18c115ea4bf15de67cbd1417dbcd4a9325b8652dd7aac705ad616f4843714969
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.4 MB (63434838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f8d0148079d7a4082dca1f38e350204be16c0a4e576277243b645fdd3da1c0c`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:19 GMT
ADD alpine-minirootfs-3.21.9-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:19 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:13:51 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-25-jre=25.0.5-r0 # buildkit
# Wed, 21 Oct 2026 22:13:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-sapmachine-jre
# Wed, 21 Oct 2026 22:13:51 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:759efa4719c9a44e7f2561a03bff2434dd66e99c916d2e4d50b055bedf554144`  
		Last Modified: Wed, 21 Oct 2026 20:47:25 GMT  
		Size: 3.6 MB (3625395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b83b431373c662257371ca1e80f8df5fc8c958af971e9eb2a3b4d9a88d7404c9`  
		Last Modified: Wed, 21 Oct 2026 22:14:04 GMT  
		Size: 59.8 MB (59809443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-alpine-3.21` - unknown; unknown

```console
$ docker pull sapmachine@sha256:6d5b346efc34250d2ab243cb54a4f90b3d6d9379af0a9947b2effe5676a2fdb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **440.3 KB (440345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17ebe6c305e7983b6354a3dadb4e41c6d43abbfa10ece3e021bebc56d83c38c1`

```dockerfile
```

-	Layers:
	-	`sha256:b9f2d7fd7ba01259c95aea9f1ffaf426fe80ff9b5c19da676655852480f1da07`  
		Last Modified: Wed, 21 Oct 2026 22:14:02 GMT  
		Size: 433.1 KB (433056 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81be3e4c1aa835375202c72e372ff17545e3e79fd920766a2147dded7f0bc02c`  
		Last Modified: Wed, 21 Oct 2026 22:14:02 GMT  
		Size: 7.3 KB (7289 bytes)  
		MIME: application/vnd.in-toto+json
