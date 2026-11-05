## `sapmachine:lts-jre-alpine-3.21`

```console
$ docker pull sapmachine@sha256:d1622653da6fde99a769da1fd31574d5a92ec3298507ede916c67923b96a857e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:lts-jre-alpine-3.21` - linux; amd64

```console
$ docker pull sapmachine@sha256:ebd8d5492321a6b920750de7c718624458f490d7dd1d9e2bf9c5d50620df456c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.4 MB (63442111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3520a079864fc035e8e204a293e31accb9a44e68207a7bd201336af4dc7c0bd4`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:43 GMT
ADD alpine-minirootfs-3.21.10-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:43 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:36:24 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-25-jre=25.0.5.0.3-r0 # buildkit
# Thu, 05 Nov 2026 19:36:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-sapmachine-jre
# Thu, 05 Nov 2026 19:36:24 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:871d48e9bf6b789a439a4a19c1e152009924d818e60f7c51e498573223cd7cda`  
		Last Modified: Thu, 05 Nov 2026 18:00:48 GMT  
		Size: 3.6 MB (3625402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45766ad616ac8eff8f06a9e1c73671b77793b03b206fc0550c760cdc87978d4a`  
		Last Modified: Thu, 05 Nov 2026 19:36:37 GMT  
		Size: 59.8 MB (59816709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jre-alpine-3.21` - unknown; unknown

```console
$ docker pull sapmachine@sha256:262dbbe38215b9c894acbacf397c1d9cce11e3279da492420572ec4c267c9e57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **440.4 KB (440394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:585dd296cb6f722dfae7e0f7fa56d2952a9ca2ad585bdff651a1245c5b023ed7`

```dockerfile
```

-	Layers:
	-	`sha256:feb1e7b0cc83a88c4ae9a4727e558ebd3155fbece3fa6fa773632f17f8bc914f`  
		Last Modified: Thu, 05 Nov 2026 19:36:35 GMT  
		Size: 433.1 KB (433090 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1f69d829bac197dfefecabe84b8a52845174da99ed8ea2f0d852377057fe242b`  
		Last Modified: Thu, 05 Nov 2026 19:36:35 GMT  
		Size: 7.3 KB (7304 bytes)  
		MIME: application/vnd.in-toto+json
