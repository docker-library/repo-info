## `sapmachine:21-jre-alpine-3.23`

```console
$ docker pull sapmachine@sha256:8914ff5e8aebb7e033e59807988c90f57f43f4546bccffc72804f496e2bddc35
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:21-jre-alpine-3.23` - linux; amd64

```console
$ docker pull sapmachine@sha256:5abcd5f11124619ede77768f0db515cc5ccabdc187909b1504511cd609b57308
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.0 MB (67005816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06293acca1eadb66a826f5a03b2c3698163d5d2dbe56caa024769b502d4d5442`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 16:57:24 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-21-jre=21.0.13.0.2-r0 # buildkit
# Fri, 23 Oct 2026 16:57:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-sapmachine-jre
# Fri, 23 Oct 2026 16:57:24 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cea99d07e518ab2f8cb2fce0c57fe66cd988155d58d81f8138092bce3de09c8`  
		Last Modified: Fri, 23 Oct 2026 16:57:38 GMT  
		Size: 63.2 MB (63153589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-alpine-3.23` - unknown; unknown

```console
$ docker pull sapmachine@sha256:8a30d788ca44cef9e0387ff2655a0e6d7333730c13f878ce01bc4f651305c103
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **436.2 KB (436241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6393e47702472c6c92e23184820b8471d6919a0a61b67831ae15b3795187a9c`

```dockerfile
```

-	Layers:
	-	`sha256:628088241ba54658ac6033db26406e447d00f9d7180227217dbb7b8f7a016ae4`  
		Last Modified: Fri, 23 Oct 2026 16:57:36 GMT  
		Size: 428.6 KB (428604 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:943cb433ae56567ee36a480b0d38c863a0ce841a546ef8d7694f7f9524fb7a4e`  
		Last Modified: Fri, 23 Oct 2026 16:57:36 GMT  
		Size: 7.6 KB (7637 bytes)  
		MIME: application/vnd.in-toto+json
