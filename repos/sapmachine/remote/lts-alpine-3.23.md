## `sapmachine:lts-alpine-3.23`

```console
$ docker pull sapmachine@sha256:36203e9cd179797fa248c9114076c28dda971496370e74104c34517d6906fe58
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:lts-alpine-3.23` - linux; amd64

```console
$ docker pull sapmachine@sha256:f25f119159852521aab7d5d358a9e46b412906939dd110e52f5ac121052c5029
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.2 MB (229238857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0620a8bed2689917bdd68d0ff2045bfb551d02fb9b02d4fd7827cff7e7219e55`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:36:21 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-25-jdk=25.0.5.0.3-r0 # buildkit
# Thu, 05 Nov 2026 19:36:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-sapmachine-jdk
# Thu, 05 Nov 2026 19:36:21 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d50ec58717144a8d076a3d5bb0b7efc26a22ed76d2f3ad482607fd1f1906a2b`  
		Last Modified: Thu, 05 Nov 2026 19:36:43 GMT  
		Size: 225.4 MB (225386268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-alpine-3.23` - unknown; unknown

```console
$ docker pull sapmachine@sha256:da885be4e68ebac8c921ad09da27151f7c7cebfebb99b2928c04499150d94383
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **514.8 KB (514771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25a52316f0915f8efc9fe9691729f778b37d8fe200c882272941cb330ce873de`

```dockerfile
```

-	Layers:
	-	`sha256:bd6feb131f6ca42dddfd96bb355bf8d77f5717d8e11fdafa1f65f1dad02a2ead`  
		Last Modified: Thu, 05 Nov 2026 19:36:38 GMT  
		Size: 504.5 KB (504541 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a4589a239daafd07458282b578b46a7a836c97bb101c4620d0b66980ccf24da`  
		Last Modified: Thu, 05 Nov 2026 19:36:38 GMT  
		Size: 10.2 KB (10230 bytes)  
		MIME: application/vnd.in-toto+json
