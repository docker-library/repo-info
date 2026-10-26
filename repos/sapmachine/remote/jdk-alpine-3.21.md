## `sapmachine:jdk-alpine-3.21`

```console
$ docker pull sapmachine@sha256:bf8af7a0ddae4b6a3bc3a889123d76c1bd1060efe2bce2805621d4f28e10933e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:jdk-alpine-3.21` - linux; amd64

```console
$ docker pull sapmachine@sha256:615777cd8230422e03818b37f7dc27d8574383bf3ee35f625ce875661d570c4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.5 MB (142507454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c992a2b7bc39cde1007dc11de02df9f657fbd5217fa535916a1cc7c1e6ab2cc4`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:19 GMT
ADD alpine-minirootfs-3.21.9-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:19 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 17:50:36 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-27-jdk=27.0.1.0.3-r0 # buildkit
# Mon, 26 Oct 2026 17:50:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-sapmachine-jdk
# Mon, 26 Oct 2026 17:50:36 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:759efa4719c9a44e7f2561a03bff2434dd66e99c916d2e4d50b055bedf554144`  
		Last Modified: Wed, 21 Oct 2026 20:47:25 GMT  
		Size: 3.6 MB (3625395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69e8d93cb3a052b9a58042d9275e9c48319f51e6053b151d8d911fbcbdca0c90`  
		Last Modified: Mon, 26 Oct 2026 17:50:52 GMT  
		Size: 138.9 MB (138882059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jdk-alpine-3.21` - unknown; unknown

```console
$ docker pull sapmachine@sha256:c8c9b2aba531f26b558866c40f67cccf1f22ba6ca129d4ed1bfb7b33d72d3241
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **465.1 KB (465063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44b301795362ac7b3338b935329d5398067b8894a4ee425677657eb105299cae`

```dockerfile
```

-	Layers:
	-	`sha256:654b95dae45e59dbd1fa7f2946e579ebe87a9375a2ff6fc8342e22bf1023b53d`  
		Last Modified: Mon, 26 Oct 2026 17:50:49 GMT  
		Size: 456.8 KB (456781 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:891664a34ee3356e06bc0b11e015ddb39204e2a89960a38d08bb94680b243b88`  
		Last Modified: Mon, 26 Oct 2026 17:50:50 GMT  
		Size: 8.3 KB (8282 bytes)  
		MIME: application/vnd.in-toto+json
