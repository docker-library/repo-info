## `sapmachine:21-jre-alpine`

```console
$ docker pull sapmachine@sha256:c788783a24fbf5956cdbf175085e7542c485f24eb39e49cc18a778100bff5d61
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:21-jre-alpine` - linux; amd64

```console
$ docker pull sapmachine@sha256:4b8b874d6b5045a16b9d067df4650f65e6ef4c9c4c4e6cf6dec1e1f989491d4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.9 MB (66852626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4aac824c8a3babad509f2599500008fa1aaeadaf617bf7856ad45800c0e0e00`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Wed, 22 Jul 2026 18:25:06 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-21-jre=21.0.12-r0 # buildkit
# Wed, 22 Jul 2026 18:25:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-sapmachine-jre
# Wed, 22 Jul 2026 18:25:06 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f531f2bd3a848847998ac0cf9398275174c8f9a8cb501fd4d91ea27f6c871c9d`  
		Last Modified: Wed, 22 Jul 2026 18:25:18 GMT  
		Size: 63.0 MB (63008205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-alpine` - unknown; unknown

```console
$ docker pull sapmachine@sha256:5b062584ca466207bdc0379c10427101fa1577e3e6ec59512f9d449001b59c22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **436.2 KB (436182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75e5e2bbfe0812c83ba81146dff5e0b460da5246c123b1d3dac56f56f6223f4f`

```dockerfile
```

-	Layers:
	-	`sha256:4f9daaa1af46d2224f4e81585556694f034663e071ec104c7c788b999668bb03`  
		Last Modified: Wed, 22 Jul 2026 18:25:17 GMT  
		Size: 428.6 KB (428572 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f4bf412bd7436f39161bd6ee57d4f886b3a1144326ab67c0cd8e9cd2fcea8100`  
		Last Modified: Wed, 22 Jul 2026 18:25:17 GMT  
		Size: 7.6 KB (7610 bytes)  
		MIME: application/vnd.in-toto+json
