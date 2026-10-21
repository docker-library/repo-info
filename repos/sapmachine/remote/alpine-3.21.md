## `sapmachine:alpine-3.21`

```console
$ docker pull sapmachine@sha256:2876b714d6fb54f2f78a843136ef1c7fc284d8089a3bf0386484d62cc3eb1a70
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:alpine-3.21` - linux; amd64

```console
$ docker pull sapmachine@sha256:5b1dbb57653245274d4d806efd3b5291e49a09fe250e2b22d63d643a6761ac28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.5 MB (142496643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fef933f4543cbd12e475b7a7875e1c2f5b0849bdd4b263edd8c7c90f890928b8`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:19 GMT
ADD alpine-minirootfs-3.21.9-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:19 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:12:41 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-27-jdk=27.0.1-r0 # buildkit
# Wed, 21 Oct 2026 22:12:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-sapmachine-jdk
# Wed, 21 Oct 2026 22:12:41 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:759efa4719c9a44e7f2561a03bff2434dd66e99c916d2e4d50b055bedf554144`  
		Last Modified: Wed, 21 Oct 2026 20:47:25 GMT  
		Size: 3.6 MB (3625395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:666a26bf0a2284d5ffb5a5e645165a017920a5daf01f87203ba347dbef24eb18`  
		Last Modified: Wed, 21 Oct 2026 22:12:58 GMT  
		Size: 138.9 MB (138871248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:alpine-3.21` - unknown; unknown

```console
$ docker pull sapmachine@sha256:289282e906ffe0b35362d7760ae8fe23f427c3b11ebedbee47452903eceaaec5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **465.0 KB (465002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e574473261ff26de58d6038570e0c9545a4979bb45e4c24ba607c67eaca2779b`

```dockerfile
```

-	Layers:
	-	`sha256:dc087e12523065481dee7696ea9f4f29d2ac66e60f99c11cd34e40d95efc14cb`  
		Last Modified: Wed, 21 Oct 2026 22:12:55 GMT  
		Size: 456.7 KB (456749 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a94808ec2804782afedc84503b68771d0659ad04bd9612b3bfd0eca83f74ba2`  
		Last Modified: Wed, 21 Oct 2026 22:12:55 GMT  
		Size: 8.3 KB (8253 bytes)  
		MIME: application/vnd.in-toto+json
