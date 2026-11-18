## `sapmachine:21-jre-alpine`

```console
$ docker pull sapmachine@sha256:4e5a3d05189b52bbb5df11d92fc66e0109a7713932c7c04ff7456e947f54f59e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:21-jre-alpine` - linux; amd64

```console
$ docker pull sapmachine@sha256:df9c590b5fc395c18b0c6bd2765c5465f8c41d3104be1541b7876b183609f32b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.0 MB (67007344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9af92f6d095eb874a4aa4a68a36a101ba1b72052b80739be2fe5899c5eab2a8`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 16:42:14 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-21-jre=21.0.13.1-r0 # buildkit
# Wed, 18 Nov 2026 16:42:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-sapmachine-jre
# Wed, 18 Nov 2026 16:42:14 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26600b89e73de56860076763aa636c556e8b964deeba35ce6508dbc57f960c85`  
		Last Modified: Wed, 18 Nov 2026 16:42:25 GMT  
		Size: 63.2 MB (63154755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-alpine` - unknown; unknown

```console
$ docker pull sapmachine@sha256:e5bf6299693757dfc9ea6ebbf05d218a30133c6f576f832fb408cc77be3c9a15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **436.2 KB (436216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77ab827aee3783f0d9e955dc22f1bfff9f538afed60626c0c51e0bb7a69eaa56`

```dockerfile
```

-	Layers:
	-	`sha256:940a3158c8e0bf3f7dc0425cdd6761bdf3ecf33b95156de87110bc2392b00896`  
		Last Modified: Wed, 18 Nov 2026 16:42:24 GMT  
		Size: 428.6 KB (428592 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b1ef050dec5fb6ee1d626572a4046dccb4a662fafa5f71a1f7c5efa6e3d6268c`  
		Last Modified: Wed, 18 Nov 2026 16:42:24 GMT  
		Size: 7.6 KB (7624 bytes)  
		MIME: application/vnd.in-toto+json
