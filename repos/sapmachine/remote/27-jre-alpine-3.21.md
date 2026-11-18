## `sapmachine:27-jre-alpine-3.21`

```console
$ docker pull sapmachine@sha256:7f01c1c39f1263abcc5c028a4e9b09bf4624e7a09298b545571f120b6a9e0f22
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:27-jre-alpine-3.21` - linux; amd64

```console
$ docker pull sapmachine@sha256:77d08a40564447003ccfeeb7a4b08e99ffa0d96ce12a1e56de1b4ab4be0f5045
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.7 MB (63688414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44f5bce2631beb02efeb5f3087eae4c4a448d8c219fafc5f4dec96ee73bfdf07`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:43 GMT
ADD alpine-minirootfs-3.21.10-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:43 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 16:41:00 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-27-jre=27.0.1.1-r0 # buildkit
# Wed, 18 Nov 2026 16:41:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-sapmachine-jre
# Wed, 18 Nov 2026 16:41:00 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:871d48e9bf6b789a439a4a19c1e152009924d818e60f7c51e498573223cd7cda`  
		Last Modified: Thu, 05 Nov 2026 18:00:48 GMT  
		Size: 3.6 MB (3625402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8aa200c492666c28902ae3a906687a8ea6487cbc06fba33c27bdff825bf4db1a`  
		Last Modified: Wed, 18 Nov 2026 16:41:12 GMT  
		Size: 60.1 MB (60063012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre-alpine-3.21` - unknown; unknown

```console
$ docker pull sapmachine@sha256:9d19c08da5b1437e9683fd83a8fbb12e09792fb34eb13704ba6c7577d521a9c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **438.3 KB (438275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07fc67e4be5e85c1a84f138bfcb4108facc198ecbf090bddf2db15c5f39f99ef`

```dockerfile
```

-	Layers:
	-	`sha256:a258bdc7ccf052b41aa73ad750a83763c6b89230334624acf0a295c07818fbf5`  
		Last Modified: Wed, 18 Nov 2026 16:41:11 GMT  
		Size: 431.0 KB (430984 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:292638cc5f97a957f8d3993fcb9528483c5af05ee6c8fee657f78f1d23d90de3`  
		Last Modified: Wed, 18 Nov 2026 16:41:10 GMT  
		Size: 7.3 KB (7291 bytes)  
		MIME: application/vnd.in-toto+json
