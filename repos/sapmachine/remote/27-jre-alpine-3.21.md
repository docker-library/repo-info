## `sapmachine:27-jre-alpine-3.21`

```console
$ docker pull sapmachine@sha256:c6b8babbb87629f6b4c1f7175ed4c38ea71ba1e7000acf901d049ebe38dbdf15
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:27-jre-alpine-3.21` - linux; amd64

```console
$ docker pull sapmachine@sha256:374fdb0dc6743240e782b20d2a3e894e568764bc453e45cfb210fe69488917da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.7 MB (63672733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4dbd9f9138a77d4fcade1fbc7150cd9439bcf4cd46084cc98d92fe95e3e3a73`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:38:22 GMT
ADD alpine-minirootfs-3.21.8-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:38:22 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:56:38 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-27-jre=27-r0 # buildkit
# Thu, 17 Sep 2026 21:56:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-sapmachine-jre
# Thu, 17 Sep 2026 21:56:38 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:16333ee0c00fc65e025a2a4f839703ad37a74728832977fbdf080984de1b8e5a`  
		Last Modified: Thu, 17 Sep 2026 20:38:28 GMT  
		Size: 3.6 MB (3626020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e9acbc73b4f40524ca03fa6700532961090835a50237c255bcba2af57d0238d`  
		Last Modified: Thu, 17 Sep 2026 21:56:50 GMT  
		Size: 60.0 MB (60046713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre-alpine-3.21` - unknown; unknown

```console
$ docker pull sapmachine@sha256:dc9383cc233af0e59956f74b8d1253176ffbed77aa68fbc76afe9a5a4610295f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **437.5 KB (437543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13e3adafde6a2ce5ad372a30455e48b3c0970b542785574377775807986feace`

```dockerfile
```

-	Layers:
	-	`sha256:597e14131b3464d7f92aaa4cb000142025def4f13ab171b089e4369258876d97`  
		Last Modified: Thu, 17 Sep 2026 21:56:49 GMT  
		Size: 430.6 KB (430608 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa3e5e204d049b9b37ad7d12b81f55ad2e1096b535d08418d189d22dc9147b0a`  
		Last Modified: Thu, 17 Sep 2026 21:56:49 GMT  
		Size: 6.9 KB (6935 bytes)  
		MIME: application/vnd.in-toto+json
