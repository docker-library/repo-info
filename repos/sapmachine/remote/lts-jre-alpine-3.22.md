## `sapmachine:lts-jre-alpine-3.22`

```console
$ docker pull sapmachine@sha256:0db3e7e19982cd99d298e5db6d781844e88882a09b32a5c3439519e592c56c1d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:lts-jre-alpine-3.22` - linux; amd64

```console
$ docker pull sapmachine@sha256:821bccd6ee9f2d0fa7b699ca1622562aaaabc879414e01ef04ccc57245490e4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.7 MB (63692902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b75daf777e559f4e47b2c2e7c333fff6d481a80e2ba97b45e4f56ec5fec16f9b`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Wed, 22 Jul 2026 18:24:18 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-25-jre=25.0.4-r0 # buildkit
# Wed, 22 Jul 2026 18:24:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-sapmachine-jre
# Wed, 22 Jul 2026 18:24:18 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4936c1afd383af036e473fef4fc34c7f420379ae295db20c68c1ede7f5720408`  
		Last Modified: Wed, 22 Jul 2026 18:24:31 GMT  
		Size: 59.9 MB (59905307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jre-alpine-3.22` - unknown; unknown

```console
$ docker pull sapmachine@sha256:baf251c6ef34927ab683a96966b47e044440eb99c2810a5be9c120cb9e0d2b70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **439.4 KB (439444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7005a9f6136c30f1c7e98b62e0aa6dede06216b6a24777549126057f46bcf662`

```dockerfile
```

-	Layers:
	-	`sha256:cefe36408bccfe65a20d7dc3576faf390736dd6b745bc45f7409f9ee4ce1c5c7`  
		Last Modified: Wed, 22 Jul 2026 18:24:29 GMT  
		Size: 432.2 KB (432155 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:920611fb32733100b718cd35350f8489c4172704600bac5a6eac08ff3dd3482e`  
		Last Modified: Wed, 22 Jul 2026 18:24:29 GMT  
		Size: 7.3 KB (7289 bytes)  
		MIME: application/vnd.in-toto+json
