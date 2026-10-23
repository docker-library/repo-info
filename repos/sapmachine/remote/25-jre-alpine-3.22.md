## `sapmachine:25-jre-alpine-3.22`

```console
$ docker pull sapmachine@sha256:1c0862ba58d6cb913814250db30d46a010cf94607b6136204cb1a0f1bbf8a072
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:25-jre-alpine-3.22` - linux; amd64

```console
$ docker pull sapmachine@sha256:8afab5320165e93efac6c02bf60f02e79f26fb1bd66477d20420dd13f18dda86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.7 MB (63746830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:979fa9686ee1fe64c9b8e1e8ece6cbce1b434d0632114162a3ce924ae870edf8`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:08 GMT
ADD alpine-minirootfs-3.22.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:08 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 16:56:08 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-25-jre=25.0.5.0.2-r0 # buildkit
# Fri, 23 Oct 2026 16:56:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-sapmachine-jre
# Fri, 23 Oct 2026 16:56:08 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:63e7e49699e8f5b93162e14c630db8294f87799bfec4376677160876bd6840dc`  
		Last Modified: Wed, 21 Oct 2026 20:47:13 GMT  
		Size: 3.8 MB (3794357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82a25d47b3c26e1ecc1e9a6dc69a161100dfc523ded158c619597ba75ede8f9d`  
		Last Modified: Fri, 23 Oct 2026 16:56:21 GMT  
		Size: 60.0 MB (59952473 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-alpine-3.22` - unknown; unknown

```console
$ docker pull sapmachine@sha256:e596a0b20f8d4609a025e0528c543ce98300dc699d9dcd9e48af68ea17a6d486
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **439.5 KB (439484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48631c712c53ae66087f801474efbc842bc09ff907d5299dfcb9c719bccc557a`

```dockerfile
```

-	Layers:
	-	`sha256:e8465d7a2f1573b033f3f59c475086529ea37f6c75ee6606ab10427e4cd63cf9`  
		Last Modified: Fri, 23 Oct 2026 16:56:19 GMT  
		Size: 432.2 KB (432179 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a38beffbe994815b2f9a54f63b628fada0713e7bd75a8ed079526f4129657053`  
		Last Modified: Fri, 23 Oct 2026 16:56:19 GMT  
		Size: 7.3 KB (7305 bytes)  
		MIME: application/vnd.in-toto+json
