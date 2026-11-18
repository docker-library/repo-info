## `sapmachine:lts-jdk-alpine-3.23`

```console
$ docker pull sapmachine@sha256:3910f938cb87646a0fcf8ea280a863960ac7102286c99f6406da4321e2541338
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:lts-jdk-alpine-3.23` - linux; amd64

```console
$ docker pull sapmachine@sha256:d69d5817bdb41042f07d8193413621bd09c5fd60cbf7bcbe5b45e71cebe4b02f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.1 MB (142103950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99297801cf1a269bc66e2c4a5438b51c3d4cffed01b4ce5ea6af262afc1929ab`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 16:41:26 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-25-jdk=25.0.5.1-r0 # buildkit
# Wed, 18 Nov 2026 16:41:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-sapmachine-jdk
# Wed, 18 Nov 2026 16:41:26 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06fdd7b8a26766bd92623f7fc9211aed7bcee2c30465d41b2d8f0ed1ffc25793`  
		Last Modified: Wed, 18 Nov 2026 16:41:44 GMT  
		Size: 138.3 MB (138251361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jdk-alpine-3.23` - unknown; unknown

```console
$ docker pull sapmachine@sha256:177bb214ed621d17890557badf9ffeb7908e1ac4ae207fec8278a1380a288351
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **469.5 KB (469531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7455b9f709799f95f946b152bf98efa895e68addf5bacd28573771dd04a0e3c3`

```dockerfile
```

-	Layers:
	-	`sha256:8e4954d4ac0186189439a4ec3ea03c972b9baff496132084437a9b3e9d180210`  
		Last Modified: Wed, 18 Nov 2026 16:41:40 GMT  
		Size: 459.3 KB (459324 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7db35cf2fe7a674769375a157955d97f78e7a37840a1cf1a8e2c696a6acab798`  
		Last Modified: Wed, 18 Nov 2026 16:41:40 GMT  
		Size: 10.2 KB (10207 bytes)  
		MIME: application/vnd.in-toto+json
