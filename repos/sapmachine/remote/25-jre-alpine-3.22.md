## `sapmachine:25-jre-alpine-3.22`

```console
$ docker pull sapmachine@sha256:fd38b971f4d04d23ec41865a83bcd6413cb4033d8bc59238a12e2b29d6ced4d4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:25-jre-alpine-3.22` - linux; amd64

```console
$ docker pull sapmachine@sha256:e83d1ed9aa609ce85b4d9dd3d5782f8c5b9368b5c2fbafe3d3aa15ac155418df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.7 MB (63747013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb720a0df5dac09308d95a196122f8be23392e623ea0ec93741d598ea7ee5f0c`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:08 GMT
ADD alpine-minirootfs-3.22.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:08 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 17:51:38 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-25-jre=25.0.5.0.3-r0 # buildkit
# Mon, 26 Oct 2026 17:51:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-sapmachine-jre
# Mon, 26 Oct 2026 17:51:38 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:63e7e49699e8f5b93162e14c630db8294f87799bfec4376677160876bd6840dc`  
		Last Modified: Wed, 21 Oct 2026 20:47:13 GMT  
		Size: 3.8 MB (3794357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a398062f03074c0abccd0928e855f20823ab5ece9cf696f53cba9e43664ae6c`  
		Last Modified: Mon, 26 Oct 2026 17:51:50 GMT  
		Size: 60.0 MB (59952656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-alpine-3.22` - unknown; unknown

```console
$ docker pull sapmachine@sha256:44d87f03bfbf5962fa86c47e79bf6048ffac2ba41f36fd839f621af6c641f0ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **439.5 KB (439484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a1785e69fa17eb53f418b19128c169ea22bc6a900dc309e6df8cf2e3f73f10c`

```dockerfile
```

-	Layers:
	-	`sha256:251b2fbc0a7e073dc1b555af0670b3a74dfa18c652ead984588afff139d3afb7`  
		Last Modified: Mon, 26 Oct 2026 17:51:48 GMT  
		Size: 432.2 KB (432179 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4a62733bc3464e05e63e6f698f0476d3cfeb85342eaf81ea0f26ae62c8a42391`  
		Last Modified: Mon, 26 Oct 2026 17:51:48 GMT  
		Size: 7.3 KB (7305 bytes)  
		MIME: application/vnd.in-toto+json
