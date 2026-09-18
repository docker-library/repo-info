## `sapmachine:27-jre-alpine-3.22`

```console
$ docker pull sapmachine@sha256:29eafddddbffa3634e68545f8ac1bb8ec9b8a3d639db35674115611be3254f42
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:27-jre-alpine-3.22` - linux; amd64

```console
$ docker pull sapmachine@sha256:5e480417a9831ea3149e85dc2e8901bdc552d435fe0958cb8e136dcbe4f572b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.0 MB (63971614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca5882f3c38e509a60fb6a5521991be65c31d727535ec8c61cf20dab15a14591`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:44 GMT
ADD alpine-minirootfs-3.22.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:44 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:56:32 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-27-jre=27-r0 # buildkit
# Thu, 17 Sep 2026 21:56:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-sapmachine-jre
# Thu, 17 Sep 2026 21:56:32 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:53f8f5e03afd86ade91b7aa57a749f5a3d1419c113be5d8c10e7ee61bb5ab887`  
		Last Modified: Thu, 17 Sep 2026 20:37:49 GMT  
		Size: 3.8 MB (3792075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d30a9abf784d323c27eed8810d036e739d025b84306555a2b25b245c6d68a6b0`  
		Last Modified: Thu, 17 Sep 2026 21:56:44 GMT  
		Size: 60.2 MB (60179539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre-alpine-3.22` - unknown; unknown

```console
$ docker pull sapmachine@sha256:de3925eaf735f76b8b8c808d363933770fb6450b09c96d525aba2b7aeb45c7e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **436.8 KB (436809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d26029fed0801bb8fcb78cb2cc6b349fbaab42185a668a0250d4cd35a6d45378`

```dockerfile
```

-	Layers:
	-	`sha256:522580667685025d9ce68ce6e25144091faef7505af71b0c4ad6d159c9b14b90`  
		Last Modified: Thu, 17 Sep 2026 21:56:43 GMT  
		Size: 429.9 KB (429875 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:522e354d711ade57e31231ad004b1fb6be4e5ca2eac97e528324d38bfb1cc2ce`  
		Last Modified: Thu, 17 Sep 2026 21:56:43 GMT  
		Size: 6.9 KB (6934 bytes)  
		MIME: application/vnd.in-toto+json
