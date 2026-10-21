## `sapmachine:21-alpine-3.21`

```console
$ docker pull sapmachine@sha256:14a93d2e2d8ee5f10e722092afb0254c93f11fcdd36919f3371bc2c2d46de76e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:21-alpine-3.21` - linux; amd64

```console
$ docker pull sapmachine@sha256:b02dd293bc74ffb5c66810415999b0fa45f06589be0297f3031c82ab7e3c006d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.3 MB (223261482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5b11741c82c824d3a17feedeb804f1b844cff1ada9c697b05143d147c667372`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:19 GMT
ADD alpine-minirootfs-3.21.9-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:19 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:15:08 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-21-jdk=21.0.13-r0 # buildkit
# Wed, 21 Oct 2026 22:15:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-sapmachine-jdk
# Wed, 21 Oct 2026 22:15:08 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:759efa4719c9a44e7f2561a03bff2434dd66e99c916d2e4d50b055bedf554144`  
		Last Modified: Wed, 21 Oct 2026 20:47:25 GMT  
		Size: 3.6 MB (3625395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c9042fbf67dda8b656edb380e2113efce88c31adc40c0d4002526778c466148`  
		Last Modified: Wed, 21 Oct 2026 22:15:30 GMT  
		Size: 219.6 MB (219636087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-alpine-3.21` - unknown; unknown

```console
$ docker pull sapmachine@sha256:83215441c07ed84fba12ddfed621dbfb71731767eccb962ed868c21df0f4b3f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **523.7 KB (523664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad748389591f06993e1ff2f2af60ef15deb1258571905405b4bfe6df29b2693d`

```dockerfile
```

-	Layers:
	-	`sha256:2b447f8c50f2b6559d542c36ba2a292f26988234eeb13f8a5b38c7b8cd08e9b3`  
		Last Modified: Wed, 21 Oct 2026 22:15:26 GMT  
		Size: 516.0 KB (516042 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:922299259fe2293ec9cc3d81950f07a3e2a3459939e33c1cbe18cba414404c8d`  
		Last Modified: Wed, 21 Oct 2026 22:15:26 GMT  
		Size: 7.6 KB (7622 bytes)  
		MIME: application/vnd.in-toto+json
