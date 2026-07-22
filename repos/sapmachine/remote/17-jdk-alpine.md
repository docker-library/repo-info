## `sapmachine:17-jdk-alpine`

```console
$ docker pull sapmachine@sha256:d8592c053df3a4c766ea089edc6f610026486bd4a115f95689b48ed4d55e6f26
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:17-jdk-alpine` - linux; amd64

```console
$ docker pull sapmachine@sha256:1d6481f5d79f5b9e2fc643531912e64c12d4f723226868d35d439afe268a68a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.4 MB (208383152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf52810552127b92ca7dfcb4065477c4878857a6ffa31a8815f27cecb0e8a242`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Wed, 22 Jul 2026 18:26:01 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-17-jdk=17.0.20-r0 # buildkit
# Wed, 22 Jul 2026 18:26:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-sapmachine-jdk
# Wed, 22 Jul 2026 18:26:01 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7db31136621b30e12f0265d2373e991d7bad787218ede6abbc1b9036655dd25e`  
		Last Modified: Wed, 22 Jul 2026 18:26:22 GMT  
		Size: 204.5 MB (204538731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jdk-alpine` - unknown; unknown

```console
$ docker pull sapmachine@sha256:90a32e024bf5ae012b0c56d8d0319ed9811a355ebd22e9102fb6032da35df3b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **521.6 KB (521566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd56be8e633584471059dad9abcab703d6a55ba5c590c5611af178e8c0a8a4f4`

```dockerfile
```

-	Layers:
	-	`sha256:3380770070f2b0cf3f753fd1e257ecc36bc2fd5e42405ae78b3bb3db67edbcfc`  
		Last Modified: Wed, 22 Jul 2026 18:26:17 GMT  
		Size: 512.7 KB (512659 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a87f9947faf81ffd662936bd52ac7b20b925c54783c69dbae0821e3b2155df18`  
		Last Modified: Wed, 22 Jul 2026 18:26:17 GMT  
		Size: 8.9 KB (8907 bytes)  
		MIME: application/vnd.in-toto+json
