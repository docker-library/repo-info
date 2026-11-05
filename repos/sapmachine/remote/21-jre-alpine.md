## `sapmachine:21-jre-alpine`

```console
$ docker pull sapmachine@sha256:cc5abcae9f5ac4da8ac5ba724e4d33e9c0a71b2f0120b8b3b5ae510971ffdfc0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:21-jre-alpine` - linux; amd64

```console
$ docker pull sapmachine@sha256:c6d46d5fe5f70bec80dd070f02af95081d9d1e448ef6c2f74433300fbf58c489
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.0 MB (67003418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a25cb2b84f2ec1dac6d2d471ee28dd6cd0424e77d3a5c485c0d7ef29541815ac`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:36:32 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-21-jre=21.0.13.0.3-r0 # buildkit
# Thu, 05 Nov 2026 19:36:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-sapmachine-jre
# Thu, 05 Nov 2026 19:36:32 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9de0ca765c5fe9714cd3678cdc7b74a3bab656781f6431a09e743b793e73429a`  
		Last Modified: Thu, 05 Nov 2026 19:36:45 GMT  
		Size: 63.2 MB (63150829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-alpine` - unknown; unknown

```console
$ docker pull sapmachine@sha256:ae815a39978a942372f93d75fc4ce66db58a9ce0d225d294aa8e999b694899f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **436.2 KB (436246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:517278b4185b747856952881f2bb37b77a818dbc0a654c4b288c716dab7c8d12`

```dockerfile
```

-	Layers:
	-	`sha256:9ffb436601511c31a099ad27976d79698933f399690bec4de07bafcb965a1fd0`  
		Last Modified: Thu, 05 Nov 2026 19:36:43 GMT  
		Size: 428.6 KB (428608 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1af326afd955df36721e924d0d3ec9747b1b90528fc6402253c468531fe4981f`  
		Last Modified: Thu, 05 Nov 2026 19:36:43 GMT  
		Size: 7.6 KB (7638 bytes)  
		MIME: application/vnd.in-toto+json
