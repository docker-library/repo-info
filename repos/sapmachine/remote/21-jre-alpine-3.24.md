## `sapmachine:21-jre-alpine-3.24`

```console
$ docker pull sapmachine@sha256:9d69b0224c74222e0e394012b48df1380e20f4c92d4405aed5a7e3e0231363d4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:21-jre-alpine-3.24` - linux; amd64

```console
$ docker pull sapmachine@sha256:c76155bb50da92a13106aef540fff515aee1123686f10cbe614fe454457866d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.0 MB (67036587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03b793d056b5bbd7b678cb7268706d3d3d6dac419e23632642fdae899fe89924`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:57:18 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-21-jre=21.0.12.1-r0 # buildkit
# Thu, 17 Sep 2026 21:57:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-sapmachine-jre
# Thu, 17 Sep 2026 21:57:18 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc762bd9af75029d760c441e371e30b358227acdc5e804ca8a9d055f0be86e5b`  
		Last Modified: Thu, 17 Sep 2026 21:57:30 GMT  
		Size: 63.2 MB (63186849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-alpine-3.24` - unknown; unknown

```console
$ docker pull sapmachine@sha256:7ac25b5216bad40dbe063f4bc132c9752458de32e0aca81aea98e1b3824dcd90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **435.0 KB (434970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1247a507bc3048438cd7c719f394dfd66113ba002da210f1ad5c6b52e8b6869`

```dockerfile
```

-	Layers:
	-	`sha256:be03784e3c6ded6edbe56e5054835545adf7c852abf4136c031ead7aab35a96c`  
		Last Modified: Thu, 17 Sep 2026 21:57:28 GMT  
		Size: 428.0 KB (428001 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7bd8e0d07df4c9900819fb6028c8a4232f86a7a90cf9295eb62fb99d9f88eb47`  
		Last Modified: Thu, 17 Sep 2026 21:57:28 GMT  
		Size: 7.0 KB (6969 bytes)  
		MIME: application/vnd.in-toto+json
