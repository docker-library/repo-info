## `sapmachine:21-jdk-alpine-3.22`

```console
$ docker pull sapmachine@sha256:2d64b4c6c9f7cfaa0dd275b70b258f28273363e8e53d976d1ec1d244844f72e7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:21-jdk-alpine-3.22` - linux; amd64

```console
$ docker pull sapmachine@sha256:2e972fb03c2f2bc92b691ae666543b5d6f8f38bd1138dc99504de00af28023c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.2 MB (223185405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db44eaefe930f40de9c6aedfdc70365f1f637d59c597baccc6ea23ac2f488ddd`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Wed, 22 Jul 2026 18:25:22 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-21-jdk=21.0.12-r0 # buildkit
# Wed, 22 Jul 2026 18:25:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-sapmachine-jdk
# Wed, 22 Jul 2026 18:25:22 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dda17ecd53423a0e930eddfdfcb7f5c00a8601b307d857c5407d36ac71b4b404`  
		Last Modified: Wed, 22 Jul 2026 18:25:44 GMT  
		Size: 219.4 MB (219397810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-alpine-3.22` - unknown; unknown

```console
$ docker pull sapmachine@sha256:d435b566e84b7a2386fef154be486f4850f9146b65a5b8ed7051f7f6a3f0e437
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **520.2 KB (520243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20c98956821b40325516ffd8f3076d03db2bceb9db2445b19f3823c68464e6f2`

```dockerfile
```

-	Layers:
	-	`sha256:7a0db1f51500ffdc6eccc9b4e7fb379be6219e3774f165214006574cc9eb041d`  
		Last Modified: Wed, 22 Jul 2026 18:25:38 GMT  
		Size: 512.6 KB (512621 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e3cbb1e1a92b5e9f48dc7625abd7f0b8a517f68da8951f634790e23923d0ac8f`  
		Last Modified: Wed, 22 Jul 2026 18:25:38 GMT  
		Size: 7.6 KB (7622 bytes)  
		MIME: application/vnd.in-toto+json
