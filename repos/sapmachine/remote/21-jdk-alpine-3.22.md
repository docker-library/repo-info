## `sapmachine:21-jdk-alpine-3.22`

```console
$ docker pull sapmachine@sha256:b21136187da675b2fcdc4f576f0700fb9e1b73a6707a428f54b221a9e46a27e9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:21-jdk-alpine-3.22` - linux; amd64

```console
$ docker pull sapmachine@sha256:53131768195e33bfe6638c151d95366992955a2d2cebc172b1730376d88f7c5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.6 MB (223582854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c65a8f098f0396887c847239c081d2de1c0bbaba48d85c23f99704de17be172`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:05 GMT
ADD alpine-minirootfs-3.22.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:05 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:36:52 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-21-jdk=21.0.13.0.3-r0 # buildkit
# Thu, 05 Nov 2026 19:36:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-sapmachine-jdk
# Thu, 05 Nov 2026 19:36:52 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:710f3da1112f360bed5d2908205aeee86b9d04ecd471354cf7049a2f0bdb5c72`  
		Last Modified: Thu, 05 Nov 2026 18:01:11 GMT  
		Size: 3.8 MB (3794375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32e84093b5a9dd7c80b15b904e316c9afa61e2cce15cfe90075865edcce7d523`  
		Last Modified: Thu, 05 Nov 2026 19:37:13 GMT  
		Size: 219.8 MB (219788479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-alpine-3.22` - unknown; unknown

```console
$ docker pull sapmachine@sha256:6e8c6b229e256b65f70418d62fd633cd6fe15f7620b8e39d8d929a55ebfcbb62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **520.3 KB (520303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0cd7e12682e6d3445fd5c5957fce961f2da55fa399eb65dc8bc4770c5e84b2b`

```dockerfile
```

-	Layers:
	-	`sha256:564245dd917fc2304d76469e4bf522464dd278451e0fd9802ac2a6b45dc617f2`  
		Last Modified: Thu, 05 Nov 2026 19:37:08 GMT  
		Size: 512.7 KB (512657 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:278a9b1a3e07b21d28999491790cda1d249a702f6a2dd297a941d3bcbd68b327`  
		Last Modified: Thu, 05 Nov 2026 19:37:08 GMT  
		Size: 7.6 KB (7646 bytes)  
		MIME: application/vnd.in-toto+json
