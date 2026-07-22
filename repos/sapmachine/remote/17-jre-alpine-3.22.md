## `sapmachine:17-jre-alpine-3.22`

```console
$ docker pull sapmachine@sha256:4e67a19414dfbc69d316fbbc2bbf3e3405ff82114a4a6b128fb13e333c95f702
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:17-jre-alpine-3.22` - linux; amd64

```console
$ docker pull sapmachine@sha256:1c3b7fbd38131d7ce2cdd22203c5c81b08af263569743581e05b3d57a6ddee52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60389854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02e435c39d0d943805f33eec59520a74b9e5d8af150d4f683f6fa187634c8088`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Wed, 22 Jul 2026 18:26:08 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-17-jre=17.0.20-r0 # buildkit
# Wed, 22 Jul 2026 18:26:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-sapmachine-jre
# Wed, 22 Jul 2026 18:26:08 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f18be507146ca8155bd7a1ab79ae071763881e3c712fe3aa61ecde50732c1ef`  
		Last Modified: Wed, 22 Jul 2026 18:26:20 GMT  
		Size: 56.6 MB (56602259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jre-alpine-3.22` - unknown; unknown

```console
$ docker pull sapmachine@sha256:a758849904c923cc9536be6478bd6522497897364bb702ac3fe87493d404f1ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **433.0 KB (432954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ccebb426a41ebebc3c105cd9ce7625120d3439c73c2a2d8c17a5daa512b4945`

```dockerfile
```

-	Layers:
	-	`sha256:73e8da358dae6b2d6838ec6919167cee7fb3eeaa1ff53af453cfc48b4518d034`  
		Last Modified: Wed, 22 Jul 2026 18:26:18 GMT  
		Size: 426.0 KB (425994 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2aea6fbc46f9a9f52e0b5d1e2c8ed57491b237af46c23bfe1670362d76cddb68`  
		Last Modified: Wed, 22 Jul 2026 18:26:18 GMT  
		Size: 7.0 KB (6960 bytes)  
		MIME: application/vnd.in-toto+json
