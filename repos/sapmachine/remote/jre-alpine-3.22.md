## `sapmachine:jre-alpine-3.22`

```console
$ docker pull sapmachine@sha256:1bbe9e67060c6fff58fe0393465a2aa2e7caed6a8e1e9ab45502d2c85ecc7894
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:jre-alpine-3.22` - linux; amd64

```console
$ docker pull sapmachine@sha256:fff37f7f7b92f4c7b788cd13656556f11e37e3ff0cec6c595a46dc6b45ba8995
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.0 MB (63992473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65f5ea3f231ae5887eca142836989b59780c679a4039bab856d636ee7b3e3a9f`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:08 GMT
ADD alpine-minirootfs-3.22.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:08 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 16:54:49 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-27-jre=27.0.1.0.2-r0 # buildkit
# Fri, 23 Oct 2026 16:54:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-sapmachine-jre
# Fri, 23 Oct 2026 16:54:49 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:63e7e49699e8f5b93162e14c630db8294f87799bfec4376677160876bd6840dc`  
		Last Modified: Wed, 21 Oct 2026 20:47:13 GMT  
		Size: 3.8 MB (3794357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18fd40a87b7d5ceb74e2b7e3356e66bb62aaed9b0dc889d1d01b55459a67620c`  
		Last Modified: Fri, 23 Oct 2026 16:55:01 GMT  
		Size: 60.2 MB (60198116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-alpine-3.22` - unknown; unknown

```console
$ docker pull sapmachine@sha256:792edde713f30cd887eb8e68e2aecca5d9b8f1b6d5117ce77ba9ae30c0b81a63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **437.6 KB (437550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc3f876013da6b360be5ff4dba7c4ac5d045af9a02d04cf3afe4e4a04f2671e6`

```dockerfile
```

-	Layers:
	-	`sha256:c988c299516ee250f1fe0a079f19044707ebed6d5aac1ae92155871f88e06fd4`  
		Last Modified: Fri, 23 Oct 2026 16:54:59 GMT  
		Size: 430.3 KB (430253 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6d19b40d5ee9bf719585243672af93c17162c279ec0049add7e326d60792aba1`  
		Last Modified: Fri, 23 Oct 2026 16:54:59 GMT  
		Size: 7.3 KB (7297 bytes)  
		MIME: application/vnd.in-toto+json
