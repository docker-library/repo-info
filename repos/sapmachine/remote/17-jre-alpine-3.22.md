## `sapmachine:17-jre-alpine-3.22`

```console
$ docker pull sapmachine@sha256:d5276fafc740424b4cc3a53e61d9f9bbd61a5a22d63ab1eeac0d5c0559863796
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:17-jre-alpine-3.22` - linux; amd64

```console
$ docker pull sapmachine@sha256:18a1fa2e2373dc51a12cfe79e754542b2821c29a883a6111da42e3e30a78d336
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60395483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d0e0c23d858898ca4bb7f34133e84eaf8eefaea2a9e8e3a09ebe42d1cc5912a`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:44 GMT
ADD alpine-minirootfs-3.22.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:44 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:57:53 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-17-jre=17.0.20.1-r0 # buildkit
# Thu, 17 Sep 2026 21:57:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-sapmachine-jre
# Thu, 17 Sep 2026 21:57:53 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:53f8f5e03afd86ade91b7aa57a749f5a3d1419c113be5d8c10e7ee61bb5ab887`  
		Last Modified: Thu, 17 Sep 2026 20:37:49 GMT  
		Size: 3.8 MB (3792075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2e30689d8edceda3095eda0d152271f25f89d177e90dd7fea3549d53a1dd86a`  
		Last Modified: Thu, 17 Sep 2026 21:58:06 GMT  
		Size: 56.6 MB (56603408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jre-alpine-3.22` - unknown; unknown

```console
$ docker pull sapmachine@sha256:f6b049f3b463cfb1539595ac537d1ca3f36bb7437323009afadafbbe42278110
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **433.0 KB (432975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0248d6e7eaf2727be616d931f6f4dd3dcf4242bc1693792925df8da0c758c00`

```dockerfile
```

-	Layers:
	-	`sha256:a283d5fa58f6a3b10332311a2529de3170d85a6ba7ba9548d702cffcf5ba7b21`  
		Last Modified: Thu, 17 Sep 2026 21:58:04 GMT  
		Size: 426.0 KB (426006 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:336bcb6c2dc2b008467748f4de0954e84b291338bd23e57decdac2b2e502e1bf`  
		Last Modified: Thu, 17 Sep 2026 21:58:04 GMT  
		Size: 7.0 KB (6969 bytes)  
		MIME: application/vnd.in-toto+json
