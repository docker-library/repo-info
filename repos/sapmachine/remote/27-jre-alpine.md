## `sapmachine:27-jre-alpine`

```console
$ docker pull sapmachine@sha256:ba33d39dfa776b02654d7abf6dd3a05073407bf767640135de68c66476884f85
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:27-jre-alpine` - linux; amd64

```console
$ docker pull sapmachine@sha256:0101cb7b3676ce5d6b1f1107719638b104e22add239abfe708bab5c00eeb29db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.5 MB (64468296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15ffbeae3493113138df8fbed336e5fffb344c971fde13c814e0a2228b1adb9c`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 17:50:04 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-27-jre=27.0.1.0.3-r0 # buildkit
# Mon, 26 Oct 2026 17:50:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-sapmachine-jre
# Mon, 26 Oct 2026 17:50:04 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b08f98d93b312460d8d81ccf7d50c9300a7ab07f883e7d5015d3c171412a3aa`  
		Last Modified: Mon, 26 Oct 2026 17:50:15 GMT  
		Size: 60.6 MB (60616069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre-alpine` - unknown; unknown

```console
$ docker pull sapmachine@sha256:b79f12bd0caa8b9022a61ba715ddd4599a2339850c44aacdff2ddd785a8abd47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **440.1 KB (440142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d113a195975e359f0a60b492504f347e3414d5bde67b8f6fe867a4c2bfbb5c0`

```dockerfile
```

-	Layers:
	-	`sha256:f2c9bff62be4938d7a45126716ed18ad312cb2ab48a4327ebd8910a1ecc3f017`  
		Last Modified: Mon, 26 Oct 2026 17:50:13 GMT  
		Size: 431.9 KB (431875 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cc0dc9fa19d9c3468730057897d7d86392e504ceb56e144268ece84e652583ac`  
		Last Modified: Mon, 26 Oct 2026 17:50:13 GMT  
		Size: 8.3 KB (8267 bytes)  
		MIME: application/vnd.in-toto+json
