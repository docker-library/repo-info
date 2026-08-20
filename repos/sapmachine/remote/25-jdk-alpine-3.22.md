## `sapmachine:25-jdk-alpine-3.22`

```console
$ docker pull sapmachine@sha256:d5c91751bbdf7c4c14fd562755c294a2520c27f46fcd4cc432e3d0706c0e9307
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:25-jdk-alpine-3.22` - linux; amd64

```console
$ docker pull sapmachine@sha256:0677201663bce164b923fbb1dad45ce25f922a4ba35557c951b90b9a71b570a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.7 MB (228682300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c703ac1b0abea40408487c62330bebe4260806ccebd323330e96d474fc713be6`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 18:06:29 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-25-jdk=25.0.4.1-r0 # buildkit
# Thu, 20 Aug 2026 18:06:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-sapmachine-jdk
# Thu, 20 Aug 2026 18:06:29 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccc3fc524323b04fe456aece6591f55b4938d50747fd607b3efaa902338d073a`  
		Last Modified: Thu, 20 Aug 2026 18:06:50 GMT  
		Size: 224.9 MB (224894705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk-alpine-3.22` - unknown; unknown

```console
$ docker pull sapmachine@sha256:75fc9432e9fb82511fa01c8e6f108eedb3237959801f1e10602a2c6a22cc6e7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **510.2 KB (510221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b66a2cdb31966a5b3cb47e1fe2644196d181da146d9aa8a413734650270d1cf`

```dockerfile
```

-	Layers:
	-	`sha256:b20e187f08f195cb08a40a24ee7e9092ce2c293f9480484d08ee2dcf18014015`  
		Last Modified: Thu, 20 Aug 2026 18:06:46 GMT  
		Size: 501.9 KB (501937 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:094d60c62a9b0822628d53b393b39f52e2937e41abac646ad51e1bd7083874c7`  
		Last Modified: Thu, 20 Aug 2026 18:06:46 GMT  
		Size: 8.3 KB (8284 bytes)  
		MIME: application/vnd.in-toto+json
