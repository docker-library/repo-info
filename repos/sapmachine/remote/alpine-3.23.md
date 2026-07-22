## `sapmachine:alpine-3.23`

```console
$ docker pull sapmachine@sha256:e0e58bf8a6801ddd8862d8a1fa5c6b9394dd3ff1bedd39ae5cb3536f6698a320
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:alpine-3.23` - linux; amd64

```console
$ docker pull sapmachine@sha256:f83fc46b63e0604c51f61d86993afbf2e978094506157b8bc12de46ed3b2bf57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.9 MB (144939880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45ab0ab45d3dbf5cb8794e27f0300001fc08df955f7b8f07817948f8a877f115`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Wed, 22 Jul 2026 18:23:15 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-26-jdk=26.0.2-r0 # buildkit
# Wed, 22 Jul 2026 18:23:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-26-sapmachine-jdk
# Wed, 22 Jul 2026 18:23:15 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef1e298c38261eacd697526d4f6c3bfbff39caae61690e90d133366445b50abd`  
		Last Modified: Wed, 22 Jul 2026 18:23:34 GMT  
		Size: 141.1 MB (141095459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:alpine-3.23` - unknown; unknown

```console
$ docker pull sapmachine@sha256:29ae18969991a02682ced5451a0eb0286f46e8bab7968f0e429fad89752cb03a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **467.5 KB (467493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2de2cebec9da487fdd1f80210d20662af55760fb499f4b45a9f1fb65c35b941e`

```dockerfile
```

-	Layers:
	-	`sha256:018dbccaf5f8fc7530b5b6b98aa40bcdab6c6b2e36653aca01eaa9e6743d422b`  
		Last Modified: Wed, 22 Jul 2026 18:23:30 GMT  
		Size: 457.3 KB (457339 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1b61ea81565ac147e9de72fdb8779d9c503812902e4417174fc2a227efa160e7`  
		Last Modified: Wed, 22 Jul 2026 18:23:30 GMT  
		Size: 10.2 KB (10154 bytes)  
		MIME: application/vnd.in-toto+json
