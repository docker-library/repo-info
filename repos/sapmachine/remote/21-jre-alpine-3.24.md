## `sapmachine:21-jre-alpine-3.24`

```console
$ docker pull sapmachine@sha256:f65a3a6b1f38057ffea183db4605bb3be5a6cc1b2878579122a2642b33940fd5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:21-jre-alpine-3.24` - linux; amd64

```console
$ docker pull sapmachine@sha256:05f5ad852ff0409b066615a29ebab71b098b08833822729c775820a86be396d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.2 MB (67167483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12b06098c6299df2bcdc90753ca004857bdcd49f02263731b4410ef862a8bf7a`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:04:21 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-21-jre=21.0.13-r0 # buildkit
# Wed, 21 Oct 2026 23:04:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-sapmachine-jre
# Wed, 21 Oct 2026 23:04:21 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6581850e0b552de2e9be5d5f5dbd2eebd5836ee76866ad865fd18fc0aea99dea`  
		Last Modified: Wed, 21 Oct 2026 23:04:35 GMT  
		Size: 63.3 MB (63314374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-alpine-3.24` - unknown; unknown

```console
$ docker pull sapmachine@sha256:b0afea69e6d4405d0ea0ebf18bcedfe536c93cfe3698dc2c2bfb7664d73b5aef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **434.9 KB (434949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbf38fe5baec1c78b690aea170f369729ff91a90996723d4b8b37b81677f558c`

```dockerfile
```

-	Layers:
	-	`sha256:3e94fb1b823590575f0d84637bf0264c2984c123e537c08e052744391362e3c9`  
		Last Modified: Wed, 21 Oct 2026 23:04:33 GMT  
		Size: 428.0 KB (427989 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:facd3ef7fe5319ece53f0ad9e8c92aa48c30a6ae16618eb43850593b1f6a244a`  
		Last Modified: Wed, 21 Oct 2026 23:04:33 GMT  
		Size: 7.0 KB (6960 bytes)  
		MIME: application/vnd.in-toto+json
