## `sapmachine:jre-alpine`

```console
$ docker pull sapmachine@sha256:165704dece098c31293349f849079956bd75a541c0d9dc417e36e623accff181
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:jre-alpine` - linux; amd64

```console
$ docker pull sapmachine@sha256:d413f7194e0154054b563d34f7e17376cb6edc3195c1c2c08628c3a994f8fcaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64446557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aab2fdc8cdd797882482a557760712bbd023e7b335b057339570f41f8a509911`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Wed, 16 Sep 2026 16:36:05 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-27-jre=27-r0 # buildkit
# Wed, 16 Sep 2026 16:36:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-sapmachine-jre
# Wed, 16 Sep 2026 16:36:05 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c165e112741a575688ae6941e93af63fe795d6ac27f4019d5da720f5c583c930`  
		Last Modified: Wed, 16 Sep 2026 16:36:17 GMT  
		Size: 60.6 MB (60602136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-alpine` - unknown; unknown

```console
$ docker pull sapmachine@sha256:e0853d9096c086874bbc4e814c6bd3d5ac7d454fccfcb3efaeb08a56dcf02883
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **438.7 KB (438730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49fa5d244a1ba47a6edb6080092925913aeb53e04c58c2c1ecb4bde698f13deb`

```dockerfile
```

-	Layers:
	-	`sha256:1923a6b1a18c483696938f8ce08ef250476d04d87e120842fd0fe090dfe1bf8d`  
		Last Modified: Wed, 16 Sep 2026 16:36:16 GMT  
		Size: 431.2 KB (431161 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d57f83b14c77f4b336d37a7aa7c58a8fdf465df33bfcbd02b9bc92e01104df0c`  
		Last Modified: Wed, 16 Sep 2026 16:36:16 GMT  
		Size: 7.6 KB (7569 bytes)  
		MIME: application/vnd.in-toto+json
