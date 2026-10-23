## `sapmachine:jdk-alpine-3.24`

```console
$ docker pull sapmachine@sha256:873f4d3fc456da2f05810df58aa999655379b756cff16c3dd01e591a8ac2a3d6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:jdk-alpine-3.24` - linux; amd64

```console
$ docker pull sapmachine@sha256:401b63f4c4103c524d1ff0a367489693e93b9ca2737c64e1aad2b02750a63a90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.5 MB (143456899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04ff8cc3282ddb78a6d4d4397fc055253bf6de51e042e93a2471dca4c1693634`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 16:54:20 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-27-jdk=27.0.1.0.2-r0 # buildkit
# Fri, 23 Oct 2026 16:54:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-sapmachine-jdk
# Fri, 23 Oct 2026 16:54:20 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11bab5444ec8403dcecf39a0dd66d4d437324ba644f1824ddc8361af3efcef07`  
		Last Modified: Fri, 23 Oct 2026 16:54:38 GMT  
		Size: 139.6 MB (139603790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jdk-alpine-3.24` - unknown; unknown

```console
$ docker pull sapmachine@sha256:4588f141fb9d91bd0577f0f8fef11811fd50ecd4a4726c20ed01860fe9a5db59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **462.5 KB (462529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92ae4c4f32ab339fcded21fd84ebd1cb574b5f67f570ef6e02ec40192b596167`

```dockerfile
```

-	Layers:
	-	`sha256:d5031c1ba286479eac89b11e7fdad55462d0db84c992910c5623d2e020ee91c4`  
		Last Modified: Fri, 23 Oct 2026 16:54:35 GMT  
		Size: 454.2 KB (454247 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5bb86d33547bdfa3ce9e6dfd34d1803bb0413429d7a01f5c6a30fa2ada7b1ce3`  
		Last Modified: Fri, 23 Oct 2026 16:54:35 GMT  
		Size: 8.3 KB (8282 bytes)  
		MIME: application/vnd.in-toto+json
