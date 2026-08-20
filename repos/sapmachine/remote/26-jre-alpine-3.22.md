## `sapmachine:26-jre-alpine-3.22`

```console
$ docker pull sapmachine@sha256:7b5067d433131edb30a83673e28e7a790635835d1ccc015d8753cc3e6e0e0df0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:26-jre-alpine-3.22` - linux; amd64

```console
$ docker pull sapmachine@sha256:8ae289fb7cacad9942d8d46706b96d01cb9b5ccdf6977104b4b391c3a917c6ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.0 MB (64995309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dab454e3eeb1cd4dc55c69a9637b5059a87563600a263b0c0d7d0ebb1143f0e1`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 18:05:08 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-26-jre=26.0.2.1-r0 # buildkit
# Thu, 20 Aug 2026 18:05:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-26-sapmachine-jre
# Thu, 20 Aug 2026 18:05:08 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df93a2e8c5e9bb91caf74b0c50b3e6e50e4c2992711f06809e609c0faa93778b`  
		Last Modified: Thu, 20 Aug 2026 18:05:20 GMT  
		Size: 61.2 MB (61207714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-jre-alpine-3.22` - unknown; unknown

```console
$ docker pull sapmachine@sha256:520d4efd747bf63c76e70ed06d94763fbd7747c923621b65d8bdf02b11c60ccb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **437.5 KB (437525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b9d2197fdee15e01a264d69a567cce68eb675a2a30ef50563f4237545519def`

```dockerfile
```

-	Layers:
	-	`sha256:3fa697de5d6cae702065f12182883e9ddf9bf6fb198f74ebfd14664e75eafd0b`  
		Last Modified: Thu, 20 Aug 2026 18:05:18 GMT  
		Size: 430.2 KB (430234 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a8e22a76120ef338868f84cf3f11443ade78fe2e70727987d3bdf8cd0f22d41`  
		Last Modified: Thu, 20 Aug 2026 18:05:18 GMT  
		Size: 7.3 KB (7291 bytes)  
		MIME: application/vnd.in-toto+json
