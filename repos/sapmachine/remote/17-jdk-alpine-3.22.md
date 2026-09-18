## `sapmachine:17-jdk-alpine-3.22`

```console
$ docker pull sapmachine@sha256:19a6e3c9dd14016fcf4c9c86d0bcc311dd770fb0c5f98d7bc37f392f226a8dab
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:17-jdk-alpine-3.22` - linux; amd64

```console
$ docker pull sapmachine@sha256:57e9cb614678a12b4e21d542dfc76522d0a8e5a94305cebde8f16f08345b6997
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.9 MB (207927866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8270725c0871fd401c643c024ccc93ed7a7c0d47ee025dccbebf3b71584a0c48`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:44 GMT
ADD alpine-minirootfs-3.22.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:44 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:58:00 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-17-jdk=17.0.20.1-r0 # buildkit
# Thu, 17 Sep 2026 21:58:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-sapmachine-jdk
# Thu, 17 Sep 2026 21:58:00 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:53f8f5e03afd86ade91b7aa57a749f5a3d1419c113be5d8c10e7ee61bb5ab887`  
		Last Modified: Thu, 17 Sep 2026 20:37:49 GMT  
		Size: 3.8 MB (3792075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7deb104ecb0a9bcb357e4c012a29ad316cf957447b6de67c9688f67cc05ff3cf`  
		Last Modified: Thu, 17 Sep 2026 21:58:19 GMT  
		Size: 204.1 MB (204135791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jdk-alpine-3.22` - unknown; unknown

```console
$ docker pull sapmachine@sha256:6dba1959a4506de86db59d0b2fec016007e1264270cdc3e05f479aba9dc27f23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **518.4 KB (518372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d38c4980fbe8e7a12f589781707187dbea11fc042aa2f261996766f70cb4d849`

```dockerfile
```

-	Layers:
	-	`sha256:c4abcdde52418594b38b7faeaec1413776e0e500c35ea2ba9a14426199effc27`  
		Last Modified: Thu, 17 Sep 2026 21:58:15 GMT  
		Size: 510.7 KB (510739 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:973b795a0781d848010943035765c9918212232b3415ed6af3e8fa9089bab171`  
		Last Modified: Thu, 17 Sep 2026 21:58:15 GMT  
		Size: 7.6 KB (7633 bytes)  
		MIME: application/vnd.in-toto+json
