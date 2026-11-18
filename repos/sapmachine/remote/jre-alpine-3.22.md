## `sapmachine:jre-alpine-3.22`

```console
$ docker pull sapmachine@sha256:fca9bf0be4e427eba41419559027fc8a432104398790b5973710efc94bf3037a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:jre-alpine-3.22` - linux; amd64

```console
$ docker pull sapmachine@sha256:b0e4a858a83fb6d51765cc0d61a560e97ce13582a34074acb5bfe74bb9718dfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.0 MB (63998148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15e5e8c10226b2af87da1497fce6c01c82dea37e2e7ee8782d1d779f353f2dcf`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:05 GMT
ADD alpine-minirootfs-3.22.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:05 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 16:40:06 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-27-jre=27.0.1.1-r0 # buildkit
# Wed, 18 Nov 2026 16:40:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-sapmachine-jre
# Wed, 18 Nov 2026 16:40:06 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:710f3da1112f360bed5d2908205aeee86b9d04ecd471354cf7049a2f0bdb5c72`  
		Last Modified: Thu, 05 Nov 2026 18:01:11 GMT  
		Size: 3.8 MB (3794375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8b692f144be5bedd86e904b5e9f924fd1768809e28a5dfbaa9e1d281977265b`  
		Last Modified: Wed, 18 Nov 2026 16:40:19 GMT  
		Size: 60.2 MB (60203773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-alpine-3.22` - unknown; unknown

```console
$ docker pull sapmachine@sha256:c9d14258024baa3b611d7420be7eb91794aab5552baecb0085fe6ac46e50a98e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **437.5 KB (437536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70e70e74937952c86edfba6469efaf142f160eb0deee6d331d7d43ec753a0de9`

```dockerfile
```

-	Layers:
	-	`sha256:738729f50e00f3f7b40f1efea595e697d9b5f0bc058c31f133b98da1ccbd225a`  
		Last Modified: Wed, 18 Nov 2026 16:40:18 GMT  
		Size: 430.2 KB (430245 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9695f0bf4628c16f4cc3ca0927897b62f8e09500b23811eefc0c7856db6e8c77`  
		Last Modified: Wed, 18 Nov 2026 16:40:17 GMT  
		Size: 7.3 KB (7291 bytes)  
		MIME: application/vnd.in-toto+json
