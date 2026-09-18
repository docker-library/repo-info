## `sapmachine:21-alpine-3.24`

```console
$ docker pull sapmachine@sha256:b6b18328ec7f443566cd85de9f1e7dc6eb9ae223f2cd01687d5821015364e207
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:21-alpine-3.24` - linux; amd64

```console
$ docker pull sapmachine@sha256:fa29ea33f21d033e8e24225dbe9e7b018ac0eed18f72e3f809f7c313bb833342
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.8 MB (223842974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e08e7718a7bbf4932b050eeb39808aed2c08d8bb4d33388d270405c3dc60b7c5`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:57:22 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-21-jdk=21.0.12.1-r0 # buildkit
# Thu, 17 Sep 2026 21:57:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-sapmachine-jdk
# Thu, 17 Sep 2026 21:57:22 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7318711d34aff7e2d7840687028a042e876176ee097d0a22bb104d26d0c0424f`  
		Last Modified: Thu, 17 Sep 2026 21:57:43 GMT  
		Size: 220.0 MB (219993236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-alpine-3.24` - unknown; unknown

```console
$ docker pull sapmachine@sha256:a5b851ec2d9f7652a4501da24bdc4671c1485f7964c789f85680724727750722
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **521.0 KB (520989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ef0d43facc61b052d940245756b643365f08a45167539248e546b34ae5b1c93`

```dockerfile
```

-	Layers:
	-	`sha256:b24cba108a7b8d12ec4fc8ceb95466b52d72d7d823993f10dd963f61b4d2120b`  
		Last Modified: Thu, 17 Sep 2026 21:57:38 GMT  
		Size: 513.4 KB (513356 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:90dcf29eae31a9171d8f352d0b067df172d76d06613aa34a98ce6834bd8b79bf`  
		Last Modified: Thu, 17 Sep 2026 21:57:38 GMT  
		Size: 7.6 KB (7633 bytes)  
		MIME: application/vnd.in-toto+json
