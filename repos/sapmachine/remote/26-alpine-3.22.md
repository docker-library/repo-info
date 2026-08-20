## `sapmachine:26-alpine-3.22`

```console
$ docker pull sapmachine@sha256:95a92b80d51c1adff2a6fbeac0de49aadb6f672b3597c6b9745af950168a999e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:26-alpine-3.22` - linux; amd64

```console
$ docker pull sapmachine@sha256:477a9a633b4c4617596ade72c9532fec216d6196740bec55b247d3c7c5185288
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.5 MB (144483320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afb3fbda3ad40b889e287c06fb9c82bd025f3b0995126b23a0dd19b36e102fb1`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 18:05:19 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-26-jdk=26.0.2.1-r0 # buildkit
# Thu, 20 Aug 2026 18:05:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-26-sapmachine-jdk
# Thu, 20 Aug 2026 18:05:19 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a1e048225066b9288369f4a93a69eb3285c81b1c3f5d0208fdb78e7e52288ea`  
		Last Modified: Thu, 20 Aug 2026 18:05:35 GMT  
		Size: 140.7 MB (140695725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-alpine-3.22` - unknown; unknown

```console
$ docker pull sapmachine@sha256:fd90ca83569da3d864f033eca1686dbe5ac77236dfb0ac3c620f7cb950ca1246
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **463.1 KB (463071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe514c6914e1fcf8d2748c3ad8b65d08bd592f44509cec991c9f02d9231784bb`

```dockerfile
```

-	Layers:
	-	`sha256:74dd5bf633d50d2c056aa3a17d91ff01c1574b954f94802f741c71551df00a8d`  
		Last Modified: Thu, 20 Aug 2026 18:05:32 GMT  
		Size: 454.8 KB (454803 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:edd16704364cd10f6af1c94f2b8e6d55f6e2acf1f56ab0860de1ad425690dbdd`  
		Last Modified: Thu, 20 Aug 2026 18:05:32 GMT  
		Size: 8.3 KB (8268 bytes)  
		MIME: application/vnd.in-toto+json
