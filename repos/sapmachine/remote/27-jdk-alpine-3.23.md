## `sapmachine:27-jdk-alpine-3.23`

```console
$ docker pull sapmachine@sha256:4d04fd0ec1cd65030a795b8d34128df13b3c6bb555f599bdf0b91cb5820f04bb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:27-jdk-alpine-3.23` - linux; amd64

```console
$ docker pull sapmachine@sha256:3b3b4a098d0b640c57b2f9d4d2a6cb79e4921622a5d0951ed8d04212b58b4a03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.2 MB (143232643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2d5882587106850b64c380428cd546330c273fb65cfd28827c3bd41ac8e91b9`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Wed, 16 Sep 2026 16:36:15 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-27-jdk=27-r0 # buildkit
# Wed, 16 Sep 2026 16:36:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-sapmachine-jdk
# Wed, 16 Sep 2026 16:36:15 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e889ddbc93c61e9249439bac2803cec9d33cc8331c87c9245e1e4cc2bcb66c11`  
		Last Modified: Wed, 16 Sep 2026 16:36:32 GMT  
		Size: 139.4 MB (139388222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jdk-alpine-3.23` - unknown; unknown

```console
$ docker pull sapmachine@sha256:8d6d149bfa38c2edade533f3ae4bd300df542c642eb150dd4d2d9ff723258e19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **463.5 KB (463546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:085906aeabe3f5f616e9a69a8880a76d5aae6559a02b8c8edb0c4ff7ddfdf75f`

```dockerfile
```

-	Layers:
	-	`sha256:1663f6b2917cd384c1a12b70f738fcf3dcbf5fe43748320909de02d8205a982c`  
		Last Modified: Wed, 16 Sep 2026 16:36:28 GMT  
		Size: 454.7 KB (454716 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:79cb981633dcb83b114972e30299747cb318d7821aa277cb4950b28bae692618`  
		Last Modified: Wed, 16 Sep 2026 16:36:29 GMT  
		Size: 8.8 KB (8830 bytes)  
		MIME: application/vnd.in-toto+json
