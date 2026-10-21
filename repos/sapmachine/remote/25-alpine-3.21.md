## `sapmachine:25-alpine-3.21`

```console
$ docker pull sapmachine@sha256:d862c762838f9a8becfaffe821113dedc6f9a9e7de114b0832577316ef06af20
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:25-alpine-3.21` - linux; amd64

```console
$ docker pull sapmachine@sha256:125f74c95ce16527a751ddeb2cea934539d811dc0aa332aa1d60441ebb6146ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.3 MB (141299039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7e1bb497cee7becc85bf728a4276341f2df206260c898978cb106fd2d200e42`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:19 GMT
ADD alpine-minirootfs-3.21.9-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:19 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:13:53 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-25-jdk=25.0.5-r0 # buildkit
# Wed, 21 Oct 2026 22:13:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-sapmachine-jdk
# Wed, 21 Oct 2026 22:13:53 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:759efa4719c9a44e7f2561a03bff2434dd66e99c916d2e4d50b055bedf554144`  
		Last Modified: Wed, 21 Oct 2026 20:47:25 GMT  
		Size: 3.6 MB (3625395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9112bdbaf7c186826c0a109097adbfca63d8dbd7ee095501a2626745be7f0ebf`  
		Last Modified: Wed, 21 Oct 2026 22:14:10 GMT  
		Size: 137.7 MB (137673644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-alpine-3.21` - unknown; unknown

```console
$ docker pull sapmachine@sha256:80565f40bcbdb06cf04ed9ebee1a8f86196f6685cbd1fb280b5e4af67828d186
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **468.4 KB (468419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09a157f6af58e28e29bcc8f51fd4155dd67e6af8db0a4c94e1f7a3342554024a`

```dockerfile
```

-	Layers:
	-	`sha256:d809d2b5a47c0a48397df3f16bdc42512498cebc4657da509f81c9d5fec8a539`  
		Last Modified: Wed, 21 Oct 2026 22:14:07 GMT  
		Size: 460.1 KB (460149 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:23764c48705831030770898acf7cef467389b12241c68509481e278e13007276`  
		Last Modified: Wed, 21 Oct 2026 22:14:07 GMT  
		Size: 8.3 KB (8270 bytes)  
		MIME: application/vnd.in-toto+json
