## `sapmachine:alpine-3.22`

```console
$ docker pull sapmachine@sha256:220c1cf74381571e6ac99f78df6428729efd115543afc1e447f86d8a0079e48e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:alpine-3.22` - linux; amd64

```console
$ docker pull sapmachine@sha256:8eb1b6f1b460de9e4ece62bb8b75a32415042446234e5ca6d60793d3c84011f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.8 MB (142809003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a5ff19e153fc2a53eb693c5096409dcce42d0a034e9ed66c2dd9c6e502b825f`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:08 GMT
ADD alpine-minirootfs-3.22.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:08 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 16:54:50 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-27-jdk=27.0.1.0.2-r0 # buildkit
# Fri, 23 Oct 2026 16:54:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-sapmachine-jdk
# Fri, 23 Oct 2026 16:54:50 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:63e7e49699e8f5b93162e14c630db8294f87799bfec4376677160876bd6840dc`  
		Last Modified: Wed, 21 Oct 2026 20:47:13 GMT  
		Size: 3.8 MB (3794357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77bbb2aac449c32b992dd0e3c4afcdb00feb6754539d4e2e9a4b4ac2720525ff`  
		Last Modified: Fri, 23 Oct 2026 16:55:08 GMT  
		Size: 139.0 MB (139014646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:alpine-3.22` - unknown; unknown

```console
$ docker pull sapmachine@sha256:b9cc9abab34d5eca6e7a97acb683c5f53147f84ac4b746169772fd4ef12139d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **461.8 KB (461810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca9341f62abf5d58abe4074aed63fc4d47a610afa21034014cd1820a9cc37171`

```dockerfile
```

-	Layers:
	-	`sha256:6cd7b8e4575d3323531676a5ad9634f26213a8eb8a7bddb5a498c868a368a577`  
		Last Modified: Fri, 23 Oct 2026 16:55:05 GMT  
		Size: 453.5 KB (453528 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e7d9b7d1f0dc7a0a79f61a12b7c752db98939401841488c955f949ffd44d4c73`  
		Last Modified: Fri, 23 Oct 2026 16:55:05 GMT  
		Size: 8.3 KB (8282 bytes)  
		MIME: application/vnd.in-toto+json
